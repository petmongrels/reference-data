package org.bahmni.referenceData.domain



import grails.test.mixin.*
import spock.lang.*

@TestFor(PanelTestController)
@Mock(PanelTest)
class PanelTestControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.panelTestInstanceList
            model.panelTestInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.panelTestInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def panelTest = new PanelTest()
            panelTest.validate()
            controller.save(panelTest)

        then:"The create view is rendered again with the correct model"
            model.panelTestInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            panelTest = new PanelTest(params)

            controller.save(panelTest)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/panelTest/show/1'
            controller.flash.message != null
            PanelTest.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def panelTest = new PanelTest(params)
            controller.show(panelTest)

        then:"A model is populated containing the domain instance"
            model.panelTestInstance == panelTest
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def panelTest = new PanelTest(params)
            controller.edit(panelTest)

        then:"A model is populated containing the domain instance"
            model.panelTestInstance == panelTest
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/panelTest/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def panelTest = new PanelTest()
            panelTest.validate()
            controller.update(panelTest)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.panelTestInstance == panelTest

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            panelTest = new PanelTest(params).save(flush: true)
            controller.update(panelTest)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/panelTest/show/$panelTest.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/panelTest/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def panelTest = new PanelTest(params).save(flush: true)

        then:"It exists"
            PanelTest.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(panelTest)

        then:"The instance is deleted"
            PanelTest.count() == 0
            response.redirectedUrl == '/panelTest/index'
            flash.message != null
    }
}
