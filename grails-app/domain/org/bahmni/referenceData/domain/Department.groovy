package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Department {
    static constraints = {
        name(blank : false, unique : true)
        isActive(blank: false)
        description(widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
    }

    static searchable =  true

    UUID id
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
