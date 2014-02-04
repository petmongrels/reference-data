package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductUnitOfMeasureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductUnitOfMeasure.list(params), model:[productUnitOfMeasureInstanceCount: ProductUnitOfMeasure.count()]
    }

    def show(ProductUnitOfMeasure productUnitOfMeasureInstance) {
        respond productUnitOfMeasureInstance
    }

    def create() {
        respond new ProductUnitOfMeasure(params)
    }

    @Transactional
    def save(ProductUnitOfMeasure productUnitOfMeasureInstance) {
        if (productUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (productUnitOfMeasureInstance.hasErrors()) {
            respond productUnitOfMeasureInstance.errors, view:'create'
            return
        }

        productUnitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productUnitOfMeasureInstance.label', default: 'ProductUnitOfMeasure'), productUnitOfMeasureInstance.id])
                redirect productUnitOfMeasureInstance
            }
            '*' { respond productUnitOfMeasureInstance, [status: CREATED] }
        }
    }

    def edit(ProductUnitOfMeasure productUnitOfMeasureInstance) {
        respond productUnitOfMeasureInstance
    }

    @Transactional
    def update(ProductUnitOfMeasure productUnitOfMeasureInstance) {
        if (productUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (productUnitOfMeasureInstance.hasErrors()) {
            respond productUnitOfMeasureInstance.errors, view:'edit'
            return
        }

        productUnitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductUnitOfMeasure.label', default: 'ProductUnitOfMeasure'), productUnitOfMeasureInstance.id])
                redirect productUnitOfMeasureInstance
            }
            '*'{ respond productUnitOfMeasureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductUnitOfMeasure productUnitOfMeasureInstance) {

        if (productUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        productUnitOfMeasureInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductUnitOfMeasure.label', default: 'ProductUnitOfMeasure'), productUnitOfMeasureInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productUnitOfMeasureInstance.label', default: 'ProductUnitOfMeasure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
