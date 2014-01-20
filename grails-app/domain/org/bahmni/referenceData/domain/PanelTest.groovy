package org.bahmni.referenceData.domain

class PanelTest {

    static constraints = {
        panel()
        test()
        dateCreated()
        lastUpdated()
    }

    static mapping = {
        id generator:'sequence', params:[sequence:'PANEL_TEST_SEQ']
    }

    static belongsTo = [panel:Panel, test:Test]

    Date dateCreated
    Date lastUpdated
}
