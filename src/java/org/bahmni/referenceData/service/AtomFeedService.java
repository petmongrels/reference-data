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
    public static final String REFERENCE_DATA = "reference_data";
    protected Log log = LogFactory.getLog(getClass());
    private final EventService eventService;

    public AtomFeedService(Connection connection) {
        eventService = new EventServiceImpl(new AllEventRecordsJdbcImpl(new ReferenceDataConnectionProvider(connection)));
    }

    public void publish(String messageType, String entityUrl) {
        log.debug("publishing event for " + messageType + ". Url -> " + entityUrl);
        eventService.notify(new Event(UUID.randomUUID().toString(), messageType, DateTime.now(), (URI) null, entityUrl, REFERENCE_DATA));
    }

}
