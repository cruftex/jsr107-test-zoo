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

````