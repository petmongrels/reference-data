package org.bahmni.referenceData.domain



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TestController {

    static allowedMethods = [save: "POST", update: "PUT"]


    def uploadCsv(){
        respond new Test(params)
    }

    @Transactional
    def csvSave(Test testInstance){
        def csvFileText = request.getFile('csvFile').inputStream.text
        csvFileText.eachCsvLine { tokens ->
            testInstance = new Test(params)
            def result = Test.findByName(tokens[1])
            if(result){
                testInstance = result
            }
            def department = Department.findByName(tokens[4])
            def sample = Sample.findByName(tokens[5])
            def testUnitOfMeasure = TestUnitOfMeasure.findByName(tokens[9])
            testInstance.factory(tokens[0], tokens[1], tokens[2], tokens[3], department, sample, tokens[6], tokens[7],
                    tokens[8], testUnitOfMeasure)
            testInstance.save flush: true
        }

        redirect(action: "index")
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Test.list(params), model:[testInstanceCount: Test.count()]
    }

    def show(Test testInstance) {
        respond testInstance
    }

    def create() {
        respond new Test(params)
    }

    @Transactional
    def save(Test testInstance) {
        if (testInstance == null) {
            notFound()
            return
        }

        if (testInstance.hasErrors()) {
            respond testInstance.errors, view:'create'
            return
        }

        testInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testInstance.label', default: 'Test'), testInstance.id])
                redirect testInstance
            }
            '*' { respond testInstance, [status: CREATED] }
        }
    }

    def edit(Test testInstance) {
        respond testInstance
    }

    @Transactional
    def update(Test testInstance) {
        if (testInstance == null) {
            notFound()
            return
        }

        if (testInstance.hasErrors()) {
            respond testInstance.errors, view:'edit'
            return
        }

        testInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Test.label', default: 'Test'), testInstance.id])
                redirect testInstance
            }
            '*'{ respond testInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Test testInstance) {

        if (testInstance == null) {
            notFound()
            return
        }

        testInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Test.label', default: 'Test'), testInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testInstance.label', default: 'Test'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
