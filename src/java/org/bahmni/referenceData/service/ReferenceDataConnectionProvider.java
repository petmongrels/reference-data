package org.bahmni.referenceData.service;

import org.ict4h.atomfeed.jdbc.JdbcConnectionProvider;
import sun.reflect.generics.reflectiveObjects.*;

import java.lang.*;
import java.lang.Override;
import java.lang.RuntimeException;
import java.lang.UnsupportedOperationException;
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

    @Override
    public void startTransaction() {
        throw new UnsupportedOperationException("This was meant to be for a server, not client. ");
    }

    @Override
    public void commit() {
        try {
            connection.commit();
        } catch (SQLException exception) {
            throw new RuntimeException(exception);
        }
    }

    @Override
    public void rollback() {
        try {
            connection.rollback();
        } catch (SQLException exception) {
            throw new RuntimeException(exception);
        }
    }
}