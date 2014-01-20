package org.bahmni.referenceData.domain

import groovy.util.logging.Log4j

@Log4j
class Test {
    static constraints = {
        name(blank: false, unique: true)
        shortName(blank: false)
        salePrice(blank: false)
        isActive(blank: false)
        uuid(blank: false, unique: true, minSize: 36, maxSize: 36)
        department(blank: false)
        sample(blank: false)
        sortOrder(blank: false)
        description(widget: 'textarea')
    }

//    static belongsTo = [Panel]

    static hasMany = {
        departments: Department
        samples: Sample
//        panels: Panel
    }

    static mapping = {
        sort isActive : "desc"
        tablePerHierarchy(false)
        id generator:'sequence', params:[sequence:'TEST_SEQ']
    }

    @Override
    String toString() {
        return name
    }
    static searchable = true

    Integer id
    String uuid = UUID.randomUUID()
    String name
    boolean isActive = true
    Date dateCreated
    Date lastUpdated

    String description
    String shortName
    double salePrice
    Department department
    Sample sample
    int sortOrder
}
