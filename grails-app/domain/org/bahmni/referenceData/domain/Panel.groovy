package org.bahmni.referenceData.domain

class Panel {

    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false, unique: true)
        sortOrder(blank: false)
        isActive(blank: false)
        uuid(blank: false, unique: true, minSize: 36, maxSize: 36)
        description(widget: 'textarea')
    }

    static mapping = {
        sort isActive : "desc"
        id generator:'sequence', params:[sequence:'PANEL_SEQ']
        tests joinTable: "panel_test"
    }

    static belongsTo = [Sample]

    static hasMany = [ tests: Test ]

    Integer id
    String uuid = UUID.randomUUID()
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
