package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PanelTestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PanelTest.list(params), model:[panelTestInstanceCount: PanelTest.count()]
    }

    def show(PanelTest panelTestInstance) {
        respond panelTestInstance
    }

    def create() {
        respond new PanelTest(params)
    }

    @Transactional
    def save(PanelTest panelTestInstance) {
        if (panelTestInstance == null) {
            notFound()
            return
        }

        if (panelTestInstance.hasErrors()) {
            respond panelTestInstance.errors, view:'create'
            return
        }

        panelTestInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'panelTestInstance.label', default: 'PanelTest'), panelTestInstance.id])
                redirect panelTestInstance
            }
            '*' { respond panelTestInstance, [status: CREATED] }
        }
    }

    def edit(PanelTest panelTestInstance) {
        respond panelTestInstance
    }

    @Transactional
    def update(PanelTest panelTestInstance) {
        if (panelTestInstance == null) {
            notFound()
            return
        }

        if (panelTestInstance.hasErrors()) {
            respond panelTestInstance.errors, view:'edit'
            return
        }

        panelTestInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PanelTest.label', default: 'PanelTest'), panelTestInstance.id])
                redirect panelTestInstance
            }
            '*'{ respond panelTestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PanelTest panelTestInstance) {

        if (panelTestInstance == null) {
            notFound()
            return
        }

        panelTestInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PanelTest.label', default: 'PanelTest'), panelTestInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'panelTestInstance.label', default: 'PanelTest'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
