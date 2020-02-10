FROM jenkins/jnlp-slave:3.35-5-alpine

LABEL BaseImage="jenkins/jnlp-slave:3.35-5-alpine"        \
      Author="Ariel C. Cardoso <arielccardoso@live.com>"

USER root

COPY entrypoint /entrypoint

RUN chmod 755 /entrypoint

USER jenkins

ENTRYPOINT ["/entrypoint"]