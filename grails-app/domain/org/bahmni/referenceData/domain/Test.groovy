package org.bahmni.referenceData.domain

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
    String resultType
    TestUnitOfMeasure testUnitOfMeasure

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        shortName(unique: true)
        salePrice(nullable: false)
        isActive(nullable: false)
        department(nullable: false)
        sample(nullable: false)
        sortOrder(nullable: false)
        description(nullable: false, blank: false, widget: 'textarea')
        resultType(nullable: false, blank: false, inList: ["Numeric", "Dictionary", "Remark"])
    }

    static belongsTo = [Sample, Department, Panel, TestUnitOfMeasure]

    static hasMany = [ panels: Panel ]

    static mapping = {
        sort isActive : "desc"
        panels joinTable: "panel_test"
    }

    def factory(String name, String shortName, String description, String salePrice, Department departmentParam,
                Sample sampleInstance, String sortOrder, String isActive, String resultType, TestUnitOfMeasure testUnitOfMeasureInstance){
        this.name = name
        this.shortName = shortName
        this.description = description
        this.salePrice = salePrice.toDouble()
        this.department = departmentParam
        this.sample = sampleInstance
        this.sortOrder = sortOrder.toInteger()
        this.isActive = isActive == 't' ? true : false
        this.resultType = resultType
        this.testUnitOfMeasure = testUnitOfMeasureInstance
    }
    static searchable = true

    @Override
    String toString() {
        return name
    }
}
