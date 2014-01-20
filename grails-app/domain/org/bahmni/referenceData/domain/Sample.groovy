package org.bahmni.referenceData.domain

class Sample {
    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false, unique: true)
        sortOrder(blank: false)
        isActive(blank: false)
        uuid(blank: false, unique: true, minSize: 36, maxSize: 36)
    }

    static mapping = {
        sort isActive : "desc"
        id generator:'sequence', params:[sequence:'SAMPLE_SEQ']
    }

    Integer id
    String uuid = UUID.randomUUID()
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
