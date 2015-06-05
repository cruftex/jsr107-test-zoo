# JSR107 open source implementation test overview
## RI Version 1.0 test

Implementation URL: https://github.com/jsr107/RI

### Test configuration

```` xml
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
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest

Excluded tests total: 1

## Infinispan 7.x test

Implementation URL: http://infinispan.org/docs/7.0.x/user_guide/user_guide.html#_using_infinispan_as_a_jsr107_jcache_provider

### Test configuration

```` xml
<implementation-groupId>org.infinispan</immplementation-groupId>
<implementation-artifactId>infinispan-jcache</implementation-artifactId>
<implementation-version>7.2.2.Final</implementation-version>
<CacheManagerImpl>org.infinispan.jcache.embedded.JCacheManager</CacheManagerImpl>
<CacheImpl>org.infinispan.jcache.embedded.JCache</CacheImpl>
<CacheEntryImpl>org.infinispan.jcache.JCacheEntry</CacheEntryImpl>
<javax.management.builder.initial>org.infinispan.jcache.tck.TckMbeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest

Excluded tests total: 1

## Apache Ignite 1.x test

Implementation URL: http://apacheignite.readme.io/v1.0/docs/jcache

### Test configuration

```` xml
<implementation-groupId>org.apache.ignite</immplementation-groupId>
<implementation-artifactId>ignite-core</implementation-artifactId>
<implementation-version>1.0.0</implementation-version>
<CacheManagerImpl>org.apache.ignite.cache.CacheManager</CacheManagerImpl>
<CacheImpl>org.apache.ignite.IgniteCache</CacheImpl>
<CacheEntryImpl>org.apache.ignite.internal.processors.cache.CacheEntryImpl</CacheEntryImpl>
<javax.management.builder.initial>org.apache.ignite.internal.tck.TCKMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.StoreByReferenceTest putIfAbsent_Missing
- org.jsr107.tck.StoreByReferenceTest getAndPut_NotThere
- org.jsr107.tck.StoreByReferenceTest putAll
- org.jsr107.tck.StoreByReferenceTest getAndPut_Existing
- org.jsr107.tck.StoreByReferenceTest putIfAbsent_There
- org.jsr107.tck.StoreByReferenceTest get_Existing
- org.jsr107.tck.StoreByReferenceTest replace_3arg
- org.jsr107.tck.StoreByReferenceTest get_Existing_NotSameKey
- org.jsr107.tck.StoreByReferenceTest put_Existing_NotSameKey
- org.jsr107.tck.StoreByReferenceTest getAndReplace
- org.jsr107.tck.StoreByReferenceTest getAndPut_Existing_NotSameKey
- org.jsr107.tck.CachingTest dummyTest
- org.jsr107.tck.TypesTest simpleAPINoGenericsAndNoTypeEnforcementStoreByReference

Excluded tests total: 13

## Ehcache-JCache V1.x test

Implementation URL: https://github.com/ehcache/ehcache-jcache

### Test configuration

```` xml
<implementation-groupId>org.ehcache</immplementation-groupId>
<implementation-artifactId>jcache</implementation-artifactId>
<implementation-version>1.0.1</implementation-version>
<CacheManagerImpl>org.ehcache.jcache.JCacheManager</CacheManagerImpl>
<CacheImpl>org.ehcache.jcache.JCache</CacheImpl>
<CacheEntryImpl>org.ehcache.jcache.JCacheEntry</CacheEntryImpl>
<javax.management.builder.initial>org.ehcache.jcache.tck.TCKMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest

Excluded tests total: 1

## Hazelcast V3.4.x test

Implementation URL: http://docs.hazelcast.org/docs/3.4/manual/html/jcache.html

### Test configuration

```` xml
<implementation-groupId>com.hazelcast</immplementation-groupId>
<implementation-artifactId>hazelcast</implementation-artifactId>
<implementation-version>3.4.2</implementation-version>
<CacheManagerImpl>com.hazelcast.cache.impl.HazelcastServerCacheManager</CacheManagerImpl>
<CacheImpl>com.hazelcast.cache.ICache</CacheImpl>
<CacheEntryImpl>com.hazelcast.cache.impl.CacheEntry</CacheEntryImpl>
<javax.management.builder.initial>com.hazelcast.cache.impl.TCKMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.StoreByReferenceTest putIfAbsent_Missing
- org.jsr107.tck.StoreByReferenceTest getAndPut_NotThere
- org.jsr107.tck.StoreByReferenceTest putAll
- org.jsr107.tck.StoreByReferenceTest getAndPut_Existing
- org.jsr107.tck.StoreByReferenceTest putIfAbsent_There
- org.jsr107.tck.StoreByReferenceTest get_Existing
- org.jsr107.tck.StoreByReferenceTest replace_3arg
- org.jsr107.tck.StoreByReferenceTest get_Existing_NotSameKey
- org.jsr107.tck.StoreByReferenceTest put_Existing_NotSameKey
- org.jsr107.tck.StoreByReferenceTest getAndReplace
- org.jsr107.tck.StoreByReferenceTest getAndPut_Existing_NotSameKey
- org.jsr107.tck.CachingTest dummyTest
- org.jsr107.tck.TypesTest simpleAPINoGenericsAndNoTypeEnforcementStoreByReference

Excluded tests total: 13


# Test run summary
````
JSR107 TCK testing zoo ............................. SUCCESS [ 1.496 s]
RI Version 1.0 test ................................ SUCCESS [ 27.553 s]
Infinispan 7.x test ................................ SUCCESS [ 29.322 s]
Apache Ignite 1.x test ............................. SUCCESS [02:02 min]
Ehcache-JCache V1.x test ........................... SUCCESS [ 30.417 s]
Hazelcast V3.4.x test .............................. SUCCESS [04:35 min]
````
