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

BEGIN { print "# JSR107 open source implementation test overview"; }

/Test module/ && !/zoo$/ { header=1; excludedCnt=0; $1=""; $2=""; $3=""; print "## "trim($0); print ""; next;}
/\[INFO\]/ && header { header=0; print "````"; next; }
header && /Test configuration/ { print "### Test configuration"; print ""; print "```` xml"; next; }
header { $1=""; print trim($0); next;}

/EXCLUDING TEST/ { excludedTxt[excludedCnt++]=$5" "$6;}

/Results :/ { results=1; print ""; print "### Test result"; next; }
/\[INFO\]/ && results { results=0; 
  print "### Excluded tests"; print "";
  # excludedCnt;
  # split (excludedTxt, A, "\n");
  for (i = 0; i < excludedCnt; i++) {
    txt=excludedTxt[i];
    sub(/\.$/, "", txt);
    gsub(/'/, "", txt);
    print "- "txt;
  }
  print ""; print "Excluded tests total: "excludedCnt;
  print "";
  # print excludedTxt;
  next; }
results { print; next; }


/\[INFO\] Reactor Summary:/ { print ""; summary=1; print "# Test run summary"; print "````"; next;}
/\[INFO\] ----------.*/ && summary { print "````"; summary=0; next; }
summary && /\.\./ { $1=""; print trim($0); next; } 

function ltrim(s) { sub(/^[ \t\r\n]+/, "", s); return s }
function rtrim(s) { sub(/[ \t\r\n]+$/, "", s); return s }
function trim(s)  { return rtrim(ltrim(s)); }
