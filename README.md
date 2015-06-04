# TCK tests for all JSR107 implementations

This project uses the maven test runner to execute JSR107 TCK tests for all currently available compatible open 
source cache implementations. These are:

  * JCache RI
  * Ehcache
  * Hazelcast
  * Apache Ignite
  * Infinispan

## Running the tests

    mvn clean test

## Run the tests and get a summary report

    mvn clean test 2>&1 | awk -f report.awk

## Structure

Each test for an implementation is in a submodule. The submodules contain the relevant configuration details 
 of each implementation and inherit everything needed for running the TCK tests from the parent project.

## Report

A tiny awk file extracts all relevant information from the output to get a complete overview of the configuration 
for each implementation and there compliance status. Example:

````
Test module: RI Version 1.0 test
Implementation URL: https://github.com/jsr107/RI

Test configuration:
<implementation-groupId>org.jsr107.ri</immplementation-groupId>
<implementation-artifactId>cache-ri-impl</implementation-artifactId>
<implementation-version>1.0.0</implementation-version>
<CacheManagerImpl>org.jsr107.ri.RICacheManager</CacheManagerImpl>
<CacheImpl>org.jsr107.ri.RICache</CacheImpl>
<CacheEntryImpl>org.jsr107.ri.RIEntry</CacheEntryImpl>
<javax.management.builder.initial>org.jsr107.ri.management.RITCKMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>RIMBeanServer</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

Excluded tests: 1

'org.jsr107.tck.CachingTest' 'dummyTest'.
````