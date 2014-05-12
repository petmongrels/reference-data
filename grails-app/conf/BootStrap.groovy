import grails.converters.JSON
import org.bahmni.referenceData.domain.Test

class BootStrap {

    def init = { servletContext ->
        JSON.registerObjectMarshaller(UUID) {
            return it.toString()
        }

        // Mujir/Neha - We need 'name' in test unit of measure. Default json representation does not get name for TestUOM
        JSON.registerObjectMarshaller(Test) {
            def output = [:]
            output['id'] = it.id
            output['name'] = it.name
            output['isActive'] = it.isActive
            output['dateCreated'] = it.dateCreated
            output['lastUpdated'] = it.lastUpdated
            output['description'] = it.description
            output['shortName'] = it.shortName
            output['salePrice'] = it.salePrice
            output['sortOrder'] = it.sortOrder
            output['department'] = it.department
            output['sample'] = it.sample
            output['resultType'] = it.resultType
            output['class'] = it.getClass().name

            if (it.testUnitOfMeasure != null) {
                def testUOMOutput = [:]
                testUOMOutput['id'] = it.testUnitOfMeasure.id
                testUOMOutput['name'] = it.testUnitOfMeasure.name
                output['testUnitOfMeasure'] = testUOMOutput
            }

            return output
        }

        def destroy = {
        }
    }
}
