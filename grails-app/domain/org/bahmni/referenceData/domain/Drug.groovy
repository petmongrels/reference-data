package org.bahmni.referenceData.domain

class Drug {
    UUID id
    String name
    Date dateCreated
    Date lastUpdated
    boolean isActive = true
    String genericName
    String shortName
    DrugCategory category
    DrugForm form
    ProductUnitOfMeasure saleUnitOfMeasure
    ProductUnitOfMeasure purchaseUnitOfMeasure
    String manufacturer
    Double costPrice
    Double salePrice
    Double strength
    String strengthUnits
    String route

    static constraints = {
        name(nullable: false, blank: false)
        genericName(nullable: false, blank: false)
        isActive(nullable: false)
        salePrice(nullable: false)
        category(nullable: false)
        form(nullable: false)
        saleUnitOfMeasure(nullable: false, validator: {val, obj -> Drug.validateUOMCategory(val, obj, 'saleUnitOfMeasure')})
        purchaseUnitOfMeasure(nullable: false, validator: {val, obj -> Drug.validatePurchaseUOMCategory(val, obj, 'purchaseUnitOfMeasure')})
    }

    static mapping = {
        sort isActive : "desc"
    }

    static validateUOMCategory(newUnitOfMeasure, drug, field) {
        ProductUnitOfMeasure oldUnitOfMeasure = drug.getPersistentValue(field)
        if(oldUnitOfMeasure != null && !oldUnitOfMeasure.getCategory().getId().equals(newUnitOfMeasure.getCategory().getId())) {
            return ["Drug.uom.validator.error", oldUnitOfMeasure.getCategory(), newUnitOfMeasure.getCategory()]
        }
    }

    static validatePurchaseUOMCategory(newUnitOfMeasure, drug, field){
        if (!drug.getSaleUnitOfMeasure().getCategory().getId().equals(drug.getPurchaseUnitOfMeasure().getCategory().getId())){
            return ["Drug.uom.mismatch.category.error", drug.getSaleUnitOfMeasure().getCategory(), drug.getPurchaseUnitOfMeasure().getCategory()]
        }
        return validateUOMCategory(newUnitOfMeasure, drug, field)
    }

    static belongsTo = [category: DrugCategory, form: DrugForm, saleUnitOfMeasure: ProductUnitOfMeasure, purchaseUnitOfMeasure: ProductUnitOfMeasure]

    @Override
    String toString() {
        return id
    }
}
