#!/bin/sh

set -e

echo "---------------------------------------------"
echo " Archiving reports from ${LOG_DIR} -directory"
echo "---------------------------------------------"
find $LOG_DIR -name \*.xml -type f -print0 | xargs -0 -n1 testarchiver --dbengine ${ARCHIVER_DB_ENGINE} --database ${ARCHIVER_DB_NAME} --host ${ARCHIVER_DB_HOST}\
                                            --user ${ARCHIVER_DB_USER} --pw ${ARCHIVER_DB_PASSWORD} \
                                            --team ${TEAM} --series ${SERIES} --format ${REPORT_FORMAT}
