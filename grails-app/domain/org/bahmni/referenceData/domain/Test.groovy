package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Test {
    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false)
        salePrice(blank: false)
        isActive(blank: false)
        department(blank: false)
        sample(blank: false)
        sortOrder(blank: false)
        description(widget: 'textarea')
    }

    static belongsTo = [Sample, Department, Panel]

    static hasMany = [ panels: Panel ]

    static mapping = {
        sort isActive : "desc"
        panels joinTable: "panel_test"
    }

    static searchable = true

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

    @Override
    String toString() {
        return name
    }
}
