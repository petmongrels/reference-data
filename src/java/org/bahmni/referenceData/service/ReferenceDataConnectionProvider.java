package org.bahmni.referenceData.service;

import org.ict4h.atomfeed.jdbc.JdbcConnectionProvider;
import java.sql.SQLException;
import java.sql.Connection;

public class ReferenceDataConnectionProvider implements JdbcConnectionProvider {
    private Connection connection;

    public ReferenceDataConnectionProvider(Connection connection) {
        this.connection = connection;
    }

   @Override
    public Connection getConnection() throws SQLException {
        return connection;
    }

    @Override
    public void closeConnection(Connection connection) throws SQLException {
    }
}