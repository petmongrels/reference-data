package org.bahmni.referenceData.domain

class ProductUnitOfMeasure {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    double ratio
    boolean isActive = true
    ProductUnitOfMeasureCategory category

    static constraints = {
        name(nullable: false, blank: false)
        isActive(nullable: false)
        category(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    static belongsTo = [category: ProductUnitOfMeasureCategory]

    @Override
    String toString() {
        return name
    }
}
