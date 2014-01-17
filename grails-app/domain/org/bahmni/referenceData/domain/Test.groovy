package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Test {
    static constraints = {
        name(blank : false, unique : true)
        cost(blank : false)
        department(blank : false)
    }

    static hasMany = {
        departments: Department
    }

    static mapping = {
        sort "name"
    }

    static searchable =  true

    Integer id
    String name
    double cost
    Department department

    Date dateCreated
    Date lastUpdated
}
