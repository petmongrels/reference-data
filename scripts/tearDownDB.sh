#!/bin/sh
psql -Upostgres -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'reference_data';"
psql -Upostgres -c "drop database reference_data";
psql -Upostgres -c "drop user reference_data";