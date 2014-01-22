package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DrugCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DrugCategory.list(params), model:[drugCategoryInstanceCount: DrugCategory.count()]
    }

    def show(DrugCategory drugCategoryInstance) {
        respond drugCategoryInstance
    }

    def create() {
        respond new DrugCategory(params)
    }

    @Transactional
    def save(DrugCategory drugCategoryInstance) {
        if (drugCategoryInstance == null) {
            notFound()
            return
        }

        if (drugCategoryInstance.hasErrors()) {
            respond drugCategoryInstance.errors, view:'create'
            return
        }

        drugCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'drugCategoryInstance.label', default: 'DrugCategory'), drugCategoryInstance.id])
                redirect drugCategoryInstance
            }
            '*' { respond drugCategoryInstance, [status: CREATED] }
        }
    }

    def edit(DrugCategory drugCategoryInstance) {
        respond drugCategoryInstance
    }

    @Transactional
    def update(DrugCategory drugCategoryInstance) {
        if (drugCategoryInstance == null) {
            notFound()
            return
        }

        if (drugCategoryInstance.hasErrors()) {
            respond drugCategoryInstance.errors, view:'edit'
            return
        }

        drugCategoryInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DrugCategory.label', default: 'DrugCategory'), drugCategoryInstance.id])
                redirect drugCategoryInstance
            }
            '*'{ respond drugCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DrugCategory drugCategoryInstance) {

        if (drugCategoryInstance == null) {
            notFound()
            return
        }

        drugCategoryInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DrugCategory.label', default: 'DrugCategory'), drugCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'drugCategoryInstance.label', default: 'DrugCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
