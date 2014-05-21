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
        description(nullable: false, blank: false, widget: 'textarea')
        sample(nullable: false, blank: false)
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

    def factory(String name, String description, String shortName, Sample sample, Set<Test> tests,
                String salePrice, String isActive, String sortOrder) {
        this.name = name
        this.description = description
        this.shortName = shortName
        this.sample = sample
        this.tests = tests? tests : null
        this.salePrice = salePrice.toDouble()
        this.isActive = isActive == 't' ? true : false
        this.sortOrder = sortOrder.toInteger()
    }
}
