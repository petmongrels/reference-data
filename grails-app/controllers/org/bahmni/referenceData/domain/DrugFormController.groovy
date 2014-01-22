package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DrugFormController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DrugForm.list(params), model:[drugFormInstanceCount: DrugForm.count()]
    }

    def show(DrugForm drugFormInstance) {
        respond drugFormInstance
    }

    def create() {
        respond new DrugForm(params)
    }

    @Transactional
    def save(DrugForm drugFormInstance) {
        if (drugFormInstance == null) {
            notFound()
            return
        }

        if (drugFormInstance.hasErrors()) {
            respond drugFormInstance.errors, view:'create'
            return
        }

        drugFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'drugFormInstance.label', default: 'DrugForm'), drugFormInstance.id])
                redirect drugFormInstance
            }
            '*' { respond drugFormInstance, [status: CREATED] }
        }
    }

    def edit(DrugForm drugFormInstance) {
        respond drugFormInstance
    }

    @Transactional
    def update(DrugForm drugFormInstance) {
        if (drugFormInstance == null) {
            notFound()
            return
        }

        if (drugFormInstance.hasErrors()) {
            respond drugFormInstance.errors, view:'edit'
            return
        }

        drugFormInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DrugForm.label', default: 'DrugForm'), drugFormInstance.id])
                redirect drugFormInstance
            }
            '*'{ respond drugFormInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DrugForm drugFormInstance) {

        if (drugFormInstance == null) {
            notFound()
            return
        }

        drugFormInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DrugForm.label', default: 'DrugForm'), drugFormInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'drugFormInstance.label', default: 'DrugForm'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
