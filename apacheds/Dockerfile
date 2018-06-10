FROM java:7-alpine

ENV APACHEDS_VERSION 2.0.0-M23
ENV APACHEDS_MD5 1b380b7eace07e338578a66a4c625d61
ENV APACHEDS_DATA /opt/apacheds/instances
ENV APACHEDS_INSTANCE default
ENV APACHEDS_USER apacheds
ENV APACHEDS_GROUP apacheds
ENV APACHEDS_MIRROR www-us.apache.org

RUN apk --no-cache add bash tar sudo

RUN cd /tmp/ && \
    wget http://${APACHEDS_MIRROR}/dist/directory/apacheds/dist/${APACHEDS_VERSION}/apacheds-${APACHEDS_VERSION}.tar.gz && \
	echo "$APACHEDS_MD5  apacheds-${APACHEDS_VERSION}.tar.gz" > MD5SUM && md5sum -c MD5SUM && \
	mkdir -p /opt/apacheds && \
	mkdir -p /tmpl && \
	cd /opt/apacheds/ && \
    tar --strip-components=1 -vxzf /tmp/apacheds-${APACHEDS_VERSION}.tar.gz && \
	mv $APACHEDS_DATA /tmpl/ && \
    rm -Rf /tmp/apacheds*

ADD run.sh /run.sh

RUN adduser -S apacheds -h /opt/apacheds -H && \
	chown ${APACHEDS_USER} /run.sh && \
    chmod u+rx /run.sh

VOLUME /opt/apacheds/instances

EXPOSE 10389 10636 60088 60464 8080 8443

CMD ["/run.sh"]
