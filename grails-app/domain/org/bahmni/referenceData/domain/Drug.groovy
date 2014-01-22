package org.bahmni.referenceData.domain

class Drug {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    boolean isActive = true
    String genericName
    String shortName
    DrugForm form
    UnitOfMeasure saleUnitOfMeasure
    UnitOfMeasure purchaseUnitOfMeasure
    String manufacturer
    Double costPrice
    Double salePrice
    Double strength
    String strengthUnits
    String route

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        isActive(nullable: false)
        salePrice(nullable: false)
        form(nullable: false)
        saleUnitOfMeasure(nullable: false)
        purchaseUnitOfMeasure(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    static belongsTo = [form: DrugForm, saleUnitOfMeasure: UnitOfMeasure, purchaseUnitOfMeasure: UnitOfMeasure]

    @Override
    String toString() {
        return name
    }
}
