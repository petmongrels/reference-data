package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PanelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Panel.list(params), model:[panelInstanceCount: Panel.count()]
    }

    def show(Panel panelInstance) {
        respond panelInstance
    }

    def create() {
        respond new Panel(params)
    }

    @Transactional
    def save(Panel panelInstance) {
        if (panelInstance == null) {
            notFound()
            return
        }

        if (panelInstance.hasErrors()) {
            respond panelInstance.errors, view:'create'
            return
        }

        panelInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'panelInstance.label', default: 'Panel'), panelInstance.id])
                redirect panelInstance
            }
            '*' { respond panelInstance, [status: CREATED] }
        }
    }

    def edit(Panel panelInstance) {
        respond panelInstance
    }

    @Transactional
    def update(Panel panelInstance) {
        if (panelInstance == null) {
            notFound()
            return
        }

        if (panelInstance.hasErrors()) {
            respond panelInstance.errors, view:'edit'
            return
        }

        panelInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Panel.label', default: 'Panel'), panelInstance.id])
                redirect panelInstance
            }
            '*'{ respond panelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Panel panelInstance) {

        if (panelInstance == null) {
            notFound()
            return
        }

        panelInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Panel.label', default: 'Panel'), panelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'panelInstance.label', default: 'Panel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
