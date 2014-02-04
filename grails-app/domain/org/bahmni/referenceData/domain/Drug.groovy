package org.bahmni.referenceData.domain

class Drug {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    boolean isActive = true
    String genericName
    String shortName
    DrugCategory category
    DrugForm form
    ProductUnitOfMeasure saleUnitOfMeasure
    ProductUnitOfMeasure purchaseUnitOfMeasure
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
        category(nullable: false)
        form(nullable: false)
        saleUnitOfMeasure(nullable: false)
        purchaseUnitOfMeasure(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    static belongsTo = [category: DrugCategory, form: DrugForm, saleUnitOfMeasure: ProductUnitOfMeasure, purchaseUnitOfMeasure: ProductUnitOfMeasure]

    @Override
    String toString() {
        return name
    }
}
