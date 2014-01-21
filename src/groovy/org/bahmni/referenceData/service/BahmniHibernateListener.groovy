package org.bahmni.referenceData.service

import grails.util.GrailsNameUtils
import groovy.util.logging.Log4j
import org.hibernate.SessionFactory
import org.hibernate.event.*

import java.sql.Connection

@Log4j
class BahmniHibernateListener implements PostInsertEventListener, PostUpdateEventListener, PostDeleteEventListener {
    def grailsApplication

    public void onPostInsert(final PostInsertEvent event) {
        publishEvent(event)
    }

    public void onPostUpdate(final PostUpdateEvent event) {
        publishEvent(event)
    }

    public void onPostDelete(final PostDeleteEvent event) {
        publishEvent(event)
    }

    private void publishEvent(event) {
        def entityId = getEntityId(event)
        def entityName = getEntityName(event).toLowerCase()
        pluralize(entityName)
        String eventUrl = "/reference-data/" + pluralize(entityName) + "/" + entityId;
        new AtomFeedService(getConnection(event)).publish(entityName, eventUrl);
    }

    private String pluralize(String name) {
        name + "s"
    }

    private Connection getConnection(event) {
        def ctx = event.entity.domainClass.grailsApplication.mainContext
        SessionFactory sessionFactory = (SessionFactory) ctx.getBean("sessionFactory")
        sessionFactory.currentSession.connection()
    }

    private String getEntityName(event) {
        if (event && event.entity) {
            return GrailsNameUtils.getShortName(event.getEntity().getClass())
        }
        return null
    }

    private String getEntityId(event) {
        if (event && event.entity) {
            def entity = event.getEntity()
            if (entity.metaClass.hasProperty(entity, 'id') && entity.'id') {
                return entity.id.toString()
            }
        }
        return null;
    }

}