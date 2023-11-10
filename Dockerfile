FROM ghcr.io/aquasecurity/trivy

RUN trivy image --download-db-only && trivy image --download-java-db-only

ENV TRIVY_SKIP_DB_UPDATE=true
ENV TRIVY_SKIP_JAVA_DB_UPDATE=true

ENTRYPOINT [ "trivy" ]
