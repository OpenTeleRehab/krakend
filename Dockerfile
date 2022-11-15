FROM devopsfaith/krakend:2.1.2

USER root

COPY config/krakend .

ENV FC_ENABLE=1
ENV FC_SETTINGS="settings"

RUN krakend check -d -c "krakend.json"
