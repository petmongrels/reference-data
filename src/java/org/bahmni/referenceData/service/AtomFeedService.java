package org.bahmni.referenceData.service;

import org.apache.commons.logging.Log; 
import org.apache.commons.logging.LogFactory;

import java.sql.Connection;
import java.util.UUID;
import java.net.URI;
import org.joda.time.DateTime;

import org.ict4h.atomfeed.server.repository.jdbc.AllEventRecordsJdbcImpl;
import org.ict4h.atomfeed.server.service.Event;
import org.ict4h.atomfeed.server.service.EventService;
import org.ict4h.atomfeed.server.service.EventServiceImpl;


public class AtomFeedService {
    private Connection connection;

    protected Log log = LogFactory.getLog(getClass());
    private final EventService eventService;

    public AtomFeedService(Connection connection) {
        this.connection = connection;
        eventService = new EventServiceImpl(new AllEventRecordsJdbcImpl(new ReferenceDataConnectionProvider(connection)));
    }

    public void publish(String messageType, String entityUrl) {
        log.debug("AtomFeedService:" + entityUrl);
        eventService.notify(new Event(UUID.randomUUID().toString(), messageType, DateTime.now(), (URI) null, entityUrl, "referenceData"));
    }

}
