package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Department {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    String description
    Integer sortOrder
    boolean isActive = true

    static constraints = {
        name(nullable: false, blank : false, unique : true)
        isActive(nullable: false)
        description(nullable: false, blank: false, widget: 'textarea')
        sortOrder(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    def factory(String version, String name, String description, String isActive, String sortOrder){
        this.version = version.toInteger()
        this.name = name
        this.description = description
        this.isActive = isActive == 't' ? true : false
        this.sortOrder = sortOrder.toInteger()
    }

    static searchable =  true

    @Override
    String toString() {
        return name
    }
}
