# Install Oracle Coherence

Note to do a minimal Coherence setup to run the TCK tests against it. 

## Prerequisites

* Recent Oracle JDK
* Coherence quick install from: http://www.oracle.com/technetwork/middleware/coherence/downloads/index.html
* Unix/Linux (tested on Ubuntu 14.04)

The setup is done as normal user (non root).

## Install coherence

The quick install notes can be found here: http://docs.oracle.com/middleware/1213/coherence/develop-applications/gs_install.htm

````
ORACLE_HOME=~/opt/oracle
unzip ~/Downloads/fmw_12.1.3.0.0_coherence_quick_Disk1_1of1.zip
java -jar fmw_12.1.3.0.0_coherence_quick.jar ORACLE_HOME=$ORACLE_HOME
````

## Install coherence jars to local maven repository

Luckily, we do not need to start up a coherence server instance. Oracle Coherence provides us a local cache
implementation. For running the tests we just need to have two jars available.
 
````
ORACLE_HOME=~/opt/oracle
COHERENCE_VERSION=12.1.3
mvn install:install-file -DpomFile=$ORACLE_HOME/coherence/plugins/maven/com/oracle/coherence/coherence-jcache/$COHERENCE_VERSION/coherence-jcache.$COHERENCE_VERSION.pom -Dfile=$ORACLE_HOME/coherence/lib/coherence-jcache.jar
mvn install:install-file -DpomFile=$ORACLE_HOME/coherence/plugins/maven/com/oracle/coherence/coherence/$COHERENCE_VERSION/coherence.$COHERENCE_VERSION.pom -Dfile=$ORACLE_HOME/coherence/lib/coherence.jar
````

