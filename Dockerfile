FROM ghcr.io/aquasecurity/trivy

RUN trivy image --download-db-only && trivy image --download-java-db-only

ENTRYPOINT [ "trivy", "--skip-db-update", "--skip-java-db-update" ]
