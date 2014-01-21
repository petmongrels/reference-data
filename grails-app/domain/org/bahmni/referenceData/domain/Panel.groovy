package org.bahmni.referenceData.domain

class Panel {

    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false, unique: true)
        sortOrder(blank: false)
        isActive(blank: false)
        description(widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
        tests joinTable: "panel_test"
    }

    static belongsTo = [Sample]

    static hasMany = [ tests: Test ]

    UUID id
    String name
    String description
    String shortName
    double salePrice
    boolean isActive = true
    Date dateCreated
    Date lastUpdated
    Integer sortOrder
    Sample sample

    @Override
    String toString() {
        return name
    }
}
