import org.bahmni.referenceData.domain.*

class BootStrap {

    def grailsApplication

    def init = { servletContext ->
/*
        grailsApplication.domainClasses.each {
            println it
        }

        for (dc in grailsApplication.domainClasses) {

            dc.clazz.exists(-1);  //to register meta class

            def gormSave = dc.clazz.metaClass.getMetaMethod('save');         
            dc.clazz.metaClass.delete = {  ->
                delegate.deleted = true
                gormSave.invoke delegate
            }

            dc.clazz.metaClass.static.list = {  ->
                def crit = delegate.createCriteria();
                def list = crit.list {
                    eq('deleted', false)
                }
                return list;
            }

        } */
    }

    def destroy = {
    }
}
