package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Test {
    UUID id
    String name
    boolean isActive = true
    Date dateCreated
    Date lastUpdated
    String description
    String shortName
    double salePrice
    int sortOrder
    Department department
    Sample sample

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        shortName(unique: true)
        salePrice(nullable: false)
        isActive(nullable: false)
        department(nullable: false)
        sample(nullable: false)
        sortOrder(nullable: false)
        description(widget: 'textarea')
    }

    static belongsTo = [Sample, Department, Panel]

    static hasMany = [ panels: Panel ]

    static mapping = {
        sort isActive : "desc"
        panels joinTable: "panel_test"
    }

    static searchable = true

    @Override
    String toString() {
        return name
    }
}
