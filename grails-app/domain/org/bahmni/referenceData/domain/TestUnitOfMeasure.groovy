package org.bahmni.referenceData.domain

class TestUnitOfMeasure {
    UUID id
    String name
    boolean isActive = true
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name(nullable: false, unique: true)
    }

    @Override
    String toString() {
        return name
    }

    def factory(String name, String isActive) {
        this.name = name
        this.isActive = isActive == 't' ? true : false
    }
}
