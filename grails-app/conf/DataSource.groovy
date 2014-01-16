//import org.grails.plugin.hibernate.filter.HibernateFilterDomainConfiguration

dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    username = "reference_data"
    password = "reference_data"
    dialect = net.sf.hibernate.dialect.PostgreSQLDialect
    //configClass = HibernateFilterDomainConfiguration
}
hibernate {
    cache.use_second_level_cache = false
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            url = "jdbc:postgresql://localhost/reference_data"
            //configClass = HibernateFilterDomainConfiguration
        }
    }
    test {
        dataSource {
            //dbCreate = ""
            url = "jdbc:postgresql://localhost/reference_data"
            //configClass = HibernateFilterDomainConfiguration
        }
    }
    production {
        dataSource {
            //dbCreate = ""
            url = "jdbc:postgresql://localhost/reference_data"
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=false
               validationQuery="SELECT 1"
               jdbcInterceptors="ConnectionState"
            }
            //configClass = HibernateFilterDomainConfiguration
        }
    }
}
