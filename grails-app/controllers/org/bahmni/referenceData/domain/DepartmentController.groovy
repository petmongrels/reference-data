package org.bahmni.referenceData.domain
import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class DepartmentController {

    static allowedMethods = [save: "POST", update: "PUT", csvSave: "POST"]

    def uploadCsv(){
        respond new Department(params)
    }

    @Transactional
    def csvSave(Department departmentInstance) {
        def csvFileStream = request.getFile('csvFile').inputStream
        csvFileStream.toCsvReader(['skipLines': 1]).eachLine { tokens ->
            departmentInstance = new Department(params)
            def result = Department.findByName(tokens[1])
            if (result) {
                departmentInstance = result
            }
            departmentInstance.factory(tokens[0], tokens[1], tokens[2], tokens[3], tokens[4])
            departmentInstance.save flush: true
        }


        flash.message = message(code: 'default.created.message', args: [message(code: 'departmentInstance.label', default: 'All Departments were successfully created')])
        redirect(uri: '/department/')
    }


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Department.list(params), model:[departmentInstanceCount: Department.count()]
    }

    def show(Department departmentInstance) {
        respond departmentInstance
    }

    def create() {
        respond new Department(params)
    }

    @Transactional
    def save(Department departmentInstance) {
        if (departmentInstance == null) {
            notFound()
            return
        }

        if (departmentInstance.hasErrors()) {
            respond departmentInstance.errors, view:'create'
            return
        }

        departmentInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'departmentInstance.label', default: 'Department'), departmentInstance.id])
                redirect departmentInstance
            }
            '*' { respond departmentInstance, [status: CREATED] }
        }
    }

    def edit(Department departmentInstance) {
        respond departmentInstance
    }

    @Transactional
    def update(Department departmentInstance) {
        if (departmentInstance == null) {
            notFound()
            return
        }

        if (departmentInstance.hasErrors()) {
            respond departmentInstance.errors, view:'edit'
            return
        }

        departmentInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Department.label', default: 'Department'), departmentInstance.id])
                redirect departmentInstance
            }
            '*'{ respond departmentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Department departmentInstance) {

        if (departmentInstance == null) {
            notFound()
            return
        }

        departmentInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Department.label', default: 'Department'), departmentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'departmentInstance.label', default: 'Department'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
