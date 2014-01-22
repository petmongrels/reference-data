package org.bahmni.referenceData.domain

class DrugForm {
    UUID id
    String name
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
