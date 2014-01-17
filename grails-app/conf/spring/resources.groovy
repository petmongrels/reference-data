import org.codehaus.groovy.grails.orm.hibernate.HibernateEventListeners

import org.bahmni.referenceData.service.BahmniHibernateListener

// Place your Spring DSL code here
beans = {
    bahmniHibernateListener(BahmniHibernateListener)

    hibernateEventListeners(HibernateEventListeners) {
      listenerMap = ['post-insert':bahmniHibernateListener,
                     'post-update':bahmniHibernateListener,
                     'post-delete':bahmniHibernateListener]
    }
}

