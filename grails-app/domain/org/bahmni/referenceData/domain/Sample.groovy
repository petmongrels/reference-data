package org.bahmni.referenceData.domain

class Sample {
    UUID id
    String name
    String shortName
    boolean isActive = true
    Date dateCreated
    Date lastUpdated
    Integer sortOrder

    static constraints = {
        name(blank: false, unique: true)
        shortName(unique: false)
        sortOrder(nullable: false)
        isActive(nullable: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    @Override
    String toString() {
        return name
    }

}
