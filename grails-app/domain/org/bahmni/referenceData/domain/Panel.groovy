package org.bahmni.referenceData.domain

class Panel {
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

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        shortName(unique: true)
        sortOrder(nullable: false)
        isActive(nullable: false)
        description(widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
        tests joinTable: "panel_test"
    }

    static belongsTo = [Sample]

    static hasMany = [ tests: Test ]

    @Override
    String toString() {
        return name
    }
}
