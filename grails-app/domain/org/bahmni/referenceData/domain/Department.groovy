package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j
import org.bahmni.referenceData.service.AtomFeedService
import org.codehaus.groovy.grails.commons.ApplicationHolder as AH 
import org.hibernate.SessionFactory

@Log4j
class Department {

    def grailsApplication

    static constraints = {
        name(blank : false, unique : true)

        //stopDate(nullable : true, visible : false)        
    }

    static mapping = {
        sort "name"
    }

    static searchable =  true

//    static hibernateFilters = {
//        deletedFilter(condition: 'stop_Date is null', default:true)
//    }

    Integer id
    String name

    Date dateCreated
    Date lastUpdated
    //Date stopDate

    String toString() {
        return name
    }

    def afterInsert() {
        log.debug("after inserting department with id:${id}")

        String departmentUrl = "/referenceData/ws/rest/v1/department/" + id;

        def ctx = AH.application.mainContext
        try {
            SessionFactory sessionFactory = (SessionFactory) ctx.getBean("sessionFactory")
            java.sql.Connection connection = sessionFactory.currentSession.connection()
            //java.sql.Connection connection = grailsApplication.getMainContext().getBean("dataSource").getConnection()
            new AtomFeedService(connection).publish("Department", departmentUrl);
        } catch (org.springframework.beans.factory.NoSuchBeanDefinitionException e) {
            log.error(e)
        }
    }

    def afterUpdate() {
        log.debug("after updating department with id:${id}")
    }

    def afterDelete() {
        log.debug("after deleting department with id:${id}")
    }

}
