#!/bin/sh

/usr/bin/mc config host add local http://${MINIO_ENDPOINT}/ ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY};
/usr/bin/mc mb -p local/${MINIO_BUCKET};
/usr/bin/mc policy set download local/${MINIO_BUCKET};
/usr/bin/mc policy set public local/${MINIO_BUCKET};
/usr/bin/mc anonymous set upload local/${MINIO_BUCKET};
/usr/bin/mc anonymous set download local/${MINIO_BUCKET};
/usr/bin/mc anonymous set public local/${MINIO_BUCKET};
