package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j
import org.bahmni.referenceData.service.AtomFeedService
import org.codehaus.groovy.grails.commons.ApplicationHolder as AH 
import org.hibernate.SessionFactory

@Log4j
class Department {
    static constraints = {
        name(blank : false, unique : true)
    }

    static mapping = {
        sort "name"
    }

    static searchable =  true

    Integer id
    String name

    Date dateCreated
    Date lastUpdated

    String toString() {
        return name
    }
}
