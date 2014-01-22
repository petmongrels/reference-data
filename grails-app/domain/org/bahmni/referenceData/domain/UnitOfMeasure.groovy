package org.bahmni.referenceData.domain

class UnitOfMeasure {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    double ratio
    boolean isActive = true
    UnitOfMeasureCategory category

    static constraints = {
        name(nullable: false, blank: false, unique: true)
        isActive(nullable: false)
        category(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    static belongsTo = [category: UnitOfMeasureCategory]

    @Override
    String toString() {
        return name
    }
}
