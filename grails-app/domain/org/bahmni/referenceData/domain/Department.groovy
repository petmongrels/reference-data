package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Department {
    static constraints = {
        name(blank : false, unique : true)
        isActive(blank: false)
        uuid(blank: false, unique: true, minSize: 36, maxSize: 36)
        description(widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
        tablePerHierarchy(false)
        id generator:'sequence', params:[sequence:'DEPARTMENT_SEQ']
    }

    static searchable =  true

    Integer id
    String uuid = UUID.randomUUID()
    String name
    boolean isActive = true
    Date dateCreated
    Date lastUpdated

    String description

    @Override
    String toString() {
        return name
    }
}
