package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Test {

    static constraints = {
        name(blank : false, unique : true)
        cost(blank : false)
        department(blank : false)

        //stopDate(nullable : true, visible : false)        
    }

    static hasMany = {
        departments: Department
    }

    static mapping = {
        sort "name"
    }

    static searchable =  true


//    static hibernateFilters = {
//        deletedFilter(condition:'stop_Date is null', default:true)
//    }

    Integer id
    String name
    double cost
    Department department

    Date dateCreated
    Date lastUpdated
    //Date stopDate


    def afterInsert() {
        log.debug("after inserting department with id:${id}")
    }

    def afterUpdate() {
        log.debug("after updating department with id:${id}")
    }

    def afterDelete() {
        log.debug("after deleting department with id:${id}")
    }
}
