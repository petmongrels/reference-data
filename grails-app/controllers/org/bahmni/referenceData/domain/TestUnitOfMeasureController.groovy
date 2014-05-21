package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestUnitOfMeasureController {

    static allowedMethods = [save: "POST", update: "PUT", csvSave: "POST"]

    def uploadCsv(){
        respond new TestUnitOfMeasure(params)
    }

    @Transactional
    def csvSave(TestUnitOfMeasure testUnitOfMeasureInstance){
        def csvFileText = request.getFile('csvFile').inputStream.text
        csvFileText.eachCsvLine { tokens ->
            testUnitOfMeasureInstance = new TestUnitOfMeasure(params)
            def result = TestUnitOfMeasure.findByName(tokens[0])
            if(result){
                testUnitOfMeasureInstance = result
            }
            testUnitOfMeasureInstance.factory(tokens[0], tokens[1])
            testUnitOfMeasureInstance.save flush: true
        }

        redirect(action: "index")
    }


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TestUnitOfMeasure.list(params), model:[testUnitOfMeasureInstanceCount: TestUnitOfMeasure.count()]
    }

    def show(TestUnitOfMeasure testUnitOfMeasureInstance) {
        respond testUnitOfMeasureInstance
    }

    def create() {
        respond new TestUnitOfMeasure(params)
    }

    @Transactional
    def save(TestUnitOfMeasure testUnitOfMeasureInstance) {
        if (testUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (testUnitOfMeasureInstance.hasErrors()) {
            respond testUnitOfMeasureInstance.errors, view:'create'
            return
        }

        testUnitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testUnitOfMeasureInstance.label', default: 'TestUnitOfMeasure'), testUnitOfMeasureInstance.id])
                redirect testUnitOfMeasureInstance
            }
            '*' { respond testUnitOfMeasureInstance, [status: CREATED] }
        }
    }

    def edit(TestUnitOfMeasure testUnitOfMeasureInstance) {
        respond testUnitOfMeasureInstance
    }

    @Transactional
    def update(TestUnitOfMeasure testUnitOfMeasureInstance) {
        if (testUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        if (testUnitOfMeasureInstance.hasErrors()) {
            respond testUnitOfMeasureInstance.errors, view:'edit'
            return
        }

        testUnitOfMeasureInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TestUnitOfMeasure.label', default: 'TestUnitOfMeasure'), testUnitOfMeasureInstance.id])
                redirect testUnitOfMeasureInstance
            }
            '*'{ respond testUnitOfMeasureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TestUnitOfMeasure testUnitOfMeasureInstance) {

        if (testUnitOfMeasureInstance == null) {
            notFound()
            return
        }

        testUnitOfMeasureInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TestUnitOfMeasure.label', default: 'TestUnitOfMeasure'), testUnitOfMeasureInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testUnitOfMeasureInstance.label', default: 'TestUnitOfMeasure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
