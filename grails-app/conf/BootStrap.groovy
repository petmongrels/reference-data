import grails.converters.JSON
import groovy.util.logging.Log4j

@Log4j
class BootStrap {

    def init = { servletContext ->
        JSON.registerObjectMarshaller(UUID) {
            return it.toString()
        }
    }

    def destroy = {
    }
}
