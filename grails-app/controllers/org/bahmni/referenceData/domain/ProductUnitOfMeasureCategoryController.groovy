package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductUnitOfMeasureCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductUnitOfMeasureCategory.list(params), model:[productUnitOfMeasureCategoryInstanceCount: ProductUnitOfMeasureCategory.count()]
    }

    def show(ProductUnitOfMeasureCategory productUnitOfMeasureCategoryInstance) {
        respond productUnitOfMeasureCategoryInstance
    }

    def create() {
        respond new ProductUnitOfMeasureCategory(params)
    }

    @Transactional
    def save(ProductUnitOfMeasureCategory productUnitOfMeasureCategoryInstance) {
        if (productUnitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        if (productUnitOfMeasureCategoryInstance.hasErrors()) {
            respond productUnitOfMeasureCategoryInstance.errors, view:'create'
            return
        }

        productUnitOfMeasureCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productUnitOfMeasureCategoryInstance.label', default: 'ProductUnitOfMeasureCategory'), productUnitOfMeasureCategoryInstance.id])
                redirect productUnitOfMeasureCategoryInstance
            }
            '*' { respond productUnitOfMeasureCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ProductUnitOfMeasureCategory productUnitOfMeasureCategoryInstance) {
        respond productUnitOfMeasureCategoryInstance
    }

    @Transactional
    def update(ProductUnitOfMeasureCategory productUnitOfMeasureCategoryInstance) {
        if (productUnitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        if (productUnitOfMeasureCategoryInstance.hasErrors()) {
            respond productUnitOfMeasureCategoryInstance.errors, view:'edit'
            return
        }

        productUnitOfMeasureCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductUnitOfMeasureCategory.label', default: 'ProductUnitOfMeasureCategory'), productUnitOfMeasureCategoryInstance.id])
                redirect productUnitOfMeasureCategoryInstance
            }
            '*'{ respond productUnitOfMeasureCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductUnitOfMeasureCategory productUnitOfMeasureCategoryInstance) {

        if (productUnitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        productUnitOfMeasureCategoryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductUnitOfMeasureCategory.label', default: 'ProductUnitOfMeasureCategory'), productUnitOfMeasureCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productUnitOfMeasureCategoryInstance.label', default: 'ProductUnitOfMeasureCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
