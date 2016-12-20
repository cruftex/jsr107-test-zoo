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

## Ehcache V3 test

Implementation URL: https://github.com/ehcache/ehcache3

### Test configuration

```` xml
<implementation-groupId>org.ehcache</immplementation-groupId>
<implementation-artifactId>ehcache</implementation-artifactId>
<implementation-version>3.1.3</implementation-version>
<CacheManagerImpl>org.ehcache.CacheManager</CacheManagerImpl>
<CacheImpl>org.ehcache.Cache</CacheImpl>
<CacheEntryImpl>org.ehcache.Cache$Entry</CacheEntryImpl>
<javax.management.builder.initial>org.ehcache.jsr107.internal.tck.Eh107MBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest
- org.jsr107.tck.spi.CachingProviderClassLoaderTest getCacheManagerSingleton
- org.jsr107.tck.management.CacheMBStatisticsBeanTest testPutIfAbsent

Excluded tests total: 3

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

## Apache JCS Version 2.0 test

Implementation URL: https://commons.apache.org/proper/commons-jcs/

### Test configuration

```` xml
<implementation-groupId>org.apache.commons</immplementation-groupId>
<implementation-artifactId>commons-jcs-jcache</implementation-artifactId>
<implementation-version>2.0-beta-1</implementation-version>
<CacheManagerImpl>org.apache.commons.jcs.jcache.JCSCachingManager</CacheManagerImpl>
<CacheImpl>org.apache.commons.jcs.jcache.JCSCache</CacheImpl>
<CacheEntryImpl>org.apache.commons.jcs.jcache.JCSEntry</CacheEntryImpl>
<javax.management.builder.initial>org.apache.commons.jcs.jcache.jmx.ConfigurableMBeanServerIdBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>MBeanServerJCS</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest

Excluded tests total: 1

## BlazingCache Version 1.x test

Implementation URL: http://blazingcache.org

### Test configuration

```` xml
<implementation-groupId>org.blazingcache</immplementation-groupId>
<implementation-artifactId>blazingcache-jcache</implementation-artifactId>
<implementation-version>1.9.0</implementation-version>
<CacheManagerImpl>blazingcache.jcache.BlazingCacheManager</CacheManagerImpl>
<CacheImpl>blazingcache.jcache.BlazingCacheCache</CacheImpl>
<CacheEntryImpl>blazingcache.jcache.BlazingCacheEntry</CacheEntryImpl>
<javax.management.builder.initial>blazingcache.jcache.BlazingCacheMBeanServerBuilder</javax.management.builder.initial>
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

## Caffeine V2.x test

Implementation URL: https://github.com/ben-manes/caffeine

### Test configuration

```` xml
<implementation-groupId>com.github.ben-manes.caffeine</immplementation-groupId>
<implementation-artifactId>jcache</implementation-artifactId>
<implementation-version>2.1.0</implementation-version>
<CacheManagerImpl>com.github.benmanes.caffeine.jcache.CacheManagerImpl</CacheManagerImpl>
<CacheImpl>com.github.benmanes.caffeine.jcache.CacheProxy</CacheImpl>
<CacheEntryImpl>com.github.benmanes.caffeine.jcache.EntryProxy</CacheEntryImpl>
<javax.management.builder.initial>com.github.benmanes.caffeine.jcache.management.JCacheMBeanServerBuilder</javax.management.builder.initial>
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

## Triava Cache Version 1.0 test

Implementation URL: https://github.com/trivago/triava

### Test configuration

```` xml
<implementation-groupId>com.trivago</immplementation-groupId>
<implementation-artifactId>triava</implementation-artifactId>
<implementation-version>0.9.8</implementation-version>
<CacheManagerImpl>com.trivago.triava.tcache.TCacheFactory</CacheManagerImpl>
<CacheImpl>com.trivago.triava.tcache.eviction.Cache</CacheImpl>
<CacheEntryImpl>com.trivago.triava.tcache.core.TCacheJSR107Entry</CacheEntryImpl>
<javax.management.builder.initial>com.trivago.triava.tcache.util.TCKMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>MBeanServerTriavaCache</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest

Excluded tests total: 1

## cache2k V1.x test

Implementation URL: https://cache2k.org

### Test configuration

```` xml
<implementation-groupId>org.cache2k</immplementation-groupId>
<implementation-artifactId>cache2k-jcache</implementation-artifactId>
<implementation-version>0.28-BETA</implementation-version>
<CacheManagerImpl>org.cache2k.CacheManger</CacheManagerImpl>
<CacheImpl>org.cache2k.Cache</CacheImpl>
<CacheEntryImpl>org.cache2k.CacheEntry</CacheEntryImpl>
<javax.management.builder.initial>org.cache2k.jcache.provider.tckGlue.TckMBeanServerBuilder</javax.management.builder.initial>
<org.jsr107.tck.management.agentId>anyvalue</org.jsr107.tck.management.agentId>
<jcache.api.version>1.0.0<jcache.api.version>
<jcache.tck.version>1.0.1<jcache.tck.version>
<jsr107-test-zoo-version>1.1-SNAPSHOT<jsr107-test-zoo-version>
````

### Test result

Tests run: 465, Failures: 0, Errors: 0, Skipped: 0

### Excluded tests

- org.jsr107.tck.CachingTest dummyTest
- org.jsr107.tck.CacheManagerTest testUnwrap
- org.jsr107.tck.management.CacheMBStatisticsBeanTest testPutIfAbsent

Excluded tests total: 3

## Redisson JCache test

Implementation URL: http://redisson.org

### Test configuration

```` xml
<implementation-groupId>org.redisson</immplementation-groupId>
<implementation-artifactId>redisson</implementation-artifactId>
<implementation-version>2.7.2</implementation-version>
<CacheManagerImpl>org.redisson.jcache.JCacheManager</CacheManagerImpl>
<CacheImpl>org.redisson.jcache.JCache</CacheImpl>
<CacheEntryImpl>org.redisson.jcache.JCacheEntry</CacheEntryImpl>
<javax.management.builder.initial>org.redisson.jcache.JCacheMBeanServerBuilder</javax.management.builder.initial>
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
JSR107 TCK testing zoo ............................. SUCCESS [ 1.349 s]
RI Version 1.0 test ................................ SUCCESS [ 27.227 s]
Infinispan 7.x test ................................ SUCCESS [ 29.610 s]
Apache Ignite 1.x test ............................. SUCCESS [04:15 min]
Ehcache-JCache V1.x test ........................... SUCCESS [ 28.407 s]
Ehcache V3 test .................................... SUCCESS [ 32.455 s]
Hazelcast V3.4.x test .............................. SUCCESS [04:32 min]
Apache JCS Version 2.0 test ........................ SUCCESS [ 27.779 s]
BlazingCache Version 1.x test ...................... SUCCESS [ 37.752 s]
Caffeine V2.x test ................................. SUCCESS [ 24.784 s]
Triava Cache Version 1.0 test ...................... SUCCESS [ 27.588 s]
cache2k V1.x test .................................. SUCCESS [ 28.161 s]
Redisson JCache test ............................... SUCCESS [04:50 min]
````
