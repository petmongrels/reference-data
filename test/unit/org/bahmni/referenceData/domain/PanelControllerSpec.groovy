package org.bahmni.referenceData.domain



import grails.test.mixin.*
import spock.lang.*

@TestFor(PanelController)
@Mock(Panel)
class PanelControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.panelInstanceList
            model.panelInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.panelInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def panel = new Panel()
            panel.validate()
            controller.save(panel)

        then:"The create view is rendered again with the correct model"
            model.panelInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            panel = new Panel(params)

            controller.save(panel)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/panel/show/1'
            controller.flash.message != null
            Panel.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def panel = new Panel(params)
            controller.show(panel)

        then:"A model is populated containing the domain instance"
            model.panelInstance == panel
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def panel = new Panel(params)
            controller.edit(panel)

        then:"A model is populated containing the domain instance"
            model.panelInstance == panel
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/panel/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def panel = new Panel()
            panel.validate()
            controller.update(panel)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.panelInstance == panel

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            panel = new Panel(params).save(flush: true)
            controller.update(panel)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/panel/show/$panel.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/panel/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def panel = new Panel(params).save(flush: true)

        then:"It exists"
            Panel.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(panel)

        then:"The instance is deleted"
            Panel.count() == 0
            response.redirectedUrl == '/panel/index'
            flash.message != null
    }
}
