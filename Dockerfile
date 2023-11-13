FROM ubuntu:20.04

RUN mkdir -p /opt/alertmanager-webhook-servicenow/
RUN mkdir -p /config
COPY alertmanager-webhook-servicenow /opt/alertmanager-webhook-servicenow/alertmanager-webhook-servicenow
COPY config/servicenow_example.yml /config/servicenow.yml

EXPOSE 9877

CMD ["/opt/alertmanager-webhook-servicenow/alertmanager-webhook-servicenow" ]
