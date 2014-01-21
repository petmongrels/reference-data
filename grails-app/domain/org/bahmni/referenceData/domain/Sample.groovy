package org.bahmni.referenceData.domain

class Sample {
    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false, unique: true)
        sortOrder(blank: false)
        isActive(blank: false)
    }

    static mapping = {
        sort isActive : "desc"
    }

    UUID id
    String name
    String shortName
    boolean isActive = true
    Date dateCreated
    Date lastUpdated
    Integer sortOrder

    @Override
    String toString() {
        return name
    }

}
