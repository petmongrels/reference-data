package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Department {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    String description
    boolean isActive = true

    static constraints = {
        name(nullable: false, blank : false, unique : true)
        isActive(nullable: false)
        description(nullable: false, blank: false, widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
    }

    static searchable =  true

    @Override
    String toString() {
        return name
    }
}
