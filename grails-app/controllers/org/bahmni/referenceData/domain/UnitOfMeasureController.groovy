package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UnitOfMeasureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitOfMeasure.list(params), model:[unitOfMeasureInstanceCount: UnitOfMeasure.count()]
    }

    def show(UnitOfMeasure unitOfMeasureInstance) {
        respond unitOfMeasureInstance
    }

    def create() {
        respond new UnitOfMeasure(params)
    }

    @Transactional
    def save(UnitOfMeasure unitOfMeasureInstance) {
        if (unitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (unitOfMeasureInstance.hasErrors()) {
            respond unitOfMeasureInstance.errors, view:'create'
            return
        }

        unitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitOfMeasureInstance.label', default: 'UnitOfMeasure'), unitOfMeasureInstance.id])
                redirect unitOfMeasureInstance
            }
            '*' { respond unitOfMeasureInstance, [status: CREATED] }
        }
    }

    def edit(UnitOfMeasure unitOfMeasureInstance) {
        respond unitOfMeasureInstance
    }

    @Transactional
    def update(UnitOfMeasure unitOfMeasureInstance) {
        if (unitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (unitOfMeasureInstance.hasErrors()) {
            respond unitOfMeasureInstance.errors, view:'edit'
            return
        }

        unitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitOfMeasure.label', default: 'UnitOfMeasure'), unitOfMeasureInstance.id])
                redirect unitOfMeasureInstance
            }
            '*'{ respond unitOfMeasureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitOfMeasure unitOfMeasureInstance) {

        if (unitOfMeasureInstance == null) {
            notFound()
            return
        }

        unitOfMeasureInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitOfMeasure.label', default: 'UnitOfMeasure'), unitOfMeasureInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitOfMeasureInstance.label', default: 'UnitOfMeasure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
