package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitOfMeasureCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitOfMeasureCategory.list(params), model:[unitOfMeasureCategoryInstanceCount: UnitOfMeasureCategory.count()]
    }

    def show(UnitOfMeasureCategory unitOfMeasureCategoryInstance) {
        respond unitOfMeasureCategoryInstance
    }

    def create() {
        respond new UnitOfMeasureCategory(params)
    }

    @Transactional
    def save(UnitOfMeasureCategory unitOfMeasureCategoryInstance) {
        if (unitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        if (unitOfMeasureCategoryInstance.hasErrors()) {
            respond unitOfMeasureCategoryInstance.errors, view:'create'
            return
        }

        unitOfMeasureCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitOfMeasureCategoryInstance.label', default: 'UnitOfMeasureCategory'), unitOfMeasureCategoryInstance.id])
                redirect unitOfMeasureCategoryInstance
            }
            '*' { respond unitOfMeasureCategoryInstance, [status: CREATED] }
        }
    }

    def edit(UnitOfMeasureCategory unitOfMeasureCategoryInstance) {
        respond unitOfMeasureCategoryInstance
    }

    @Transactional
    def update(UnitOfMeasureCategory unitOfMeasureCategoryInstance) {
        if (unitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        if (unitOfMeasureCategoryInstance.hasErrors()) {
            respond unitOfMeasureCategoryInstance.errors, view:'edit'
            return
        }

        unitOfMeasureCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitOfMeasureCategory.label', default: 'UnitOfMeasureCategory'), unitOfMeasureCategoryInstance.id])
                redirect unitOfMeasureCategoryInstance
            }
            '*'{ respond unitOfMeasureCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitOfMeasureCategory unitOfMeasureCategoryInstance) {

        if (unitOfMeasureCategoryInstance == null) {
            notFound()
            return
        }

        unitOfMeasureCategoryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitOfMeasureCategory.label', default: 'UnitOfMeasureCategory'), unitOfMeasureCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitOfMeasureCategoryInstance.label', default: 'UnitOfMeasureCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
