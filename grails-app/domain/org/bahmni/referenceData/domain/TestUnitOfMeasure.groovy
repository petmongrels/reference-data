package org.bahmni.referenceData.domain

class TestUnitOfMeasure {
    UUID id
    String name
    boolean isActive = true
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(nullable: false, blank: false, unique: true)
    }

    @Override
    String toString() {
        return name
    }
}
