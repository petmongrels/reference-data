package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DrugController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Drug.list(params), model:[drugInstanceCount: Drug.count()]
    }

    def show(Drug drugInstance) {
        respond drugInstance
    }

    def create() {
        respond new Drug(params)
    }

    @Transactional
    def save(Drug drugInstance) {
        if (drugInstance == null) {
            notFound()
            return
        }

        if (drugInstance.hasErrors()) {
            respond drugInstance.errors, view:'create'
            return
        }

        drugInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'drugInstance.label', default: 'Drug'), drugInstance.id])
                redirect drugInstance
            }
            '*' { respond drugInstance, [status: CREATED] }
        }
    }

    def edit(Drug drugInstance) {
        respond drugInstance
    }

    @Transactional
    def update(Drug drugInstance) {
        if (drugInstance == null) {
            notFound()
            return
        }

        if (drugInstance.hasErrors()) {
            respond drugInstance.errors, view:'edit'
            return
        }

        drugInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Drug.label', default: 'Drug'), drugInstance.id])
                redirect drugInstance
            }
            '*'{ respond drugInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Drug drugInstance) {

        if (drugInstance == null) {
            notFound()
            return
        }

        drugInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Drug.label', default: 'Drug'), drugInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'drugInstance.label', default: 'Drug'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
