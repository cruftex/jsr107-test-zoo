#  Copyright 2015 headissue GmbH, Jens Wilke
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# Filter and print only relevant output from the command: mvn tes

/Test module/ && !/zoo$/ { header=1; excludedCnt=0; excludedTxt=""; print ""; print "";}
/\[INFO\]/ && header { header=0; next; }
header { $1=""; print trim($0); next;}

/EXCLUDING TEST/ { excludedCnt++; excludedTxt=excludedTxt"\n"$5" "$6;}

/Results :/ { results=1; next; }
/\[INFO\]/ && results { results=0; 
  print "Excluded tests: "excludedCnt;
  print excludedTxt;
  next; }
results { print; next; }


/\[INFO\] Reactor Summary:/ { print ""; summary=1; }
/\[INFO\] ----------.*/ && summary { summary=0; next; }
summary { $1=""; print trim($0); next; } 

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
