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

    def factory(String version, String name, String shortName, String isActive, String sortOrder){
        this.version = version.toInteger()
        this.name = name
        this.shortName = shortName
        this.isActive = isActive == 't' ? true : false
        this.sortOrder = sortOrder.toInteger()
    }

    @Override
    String toString() {
        return name
    }

}
