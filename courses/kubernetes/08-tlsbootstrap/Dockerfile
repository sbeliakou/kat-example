FROM golang as build
WORKDIR /go/src/webserver

RUN apt-get update && apt-get install -y upx tree
RUN go get -u github.com/go-bindata/go-bindata/... && \
    go get gopkg.in/yaml.v2 && \
    go get github.com/gorilla/mux

ARG MODULE=""
ARG TRAINING=""

ADD _env/_web/go2.sh ./
ADD _env/_web/webserver/webserver.go ./
ADD _env/_web/templates ./templates/
ADD _env/_web/stabserver/stab.go ./stabserver/
ADD ${MODULE}/${TRAINING} ./

RUN echo "${MODULE}/${TRAINING}/" && \
    TERM=xterm-256color tree -ACFDh --timefmt "(%Y/%m/%d %T)" $(pwd)

ARG STAGE=""
ARG PROD=""
## Hardening
RUN [ -n "${STAGE}${PROD}" ] && \
    sed -i "s/\(var count_steps int = \).*/\1$(ls -ld tasks/*/ | wc -l)/" webserver.go && \
    sed -i "s/^    <button name=.\(next\|back\)Btn..*//" templates/*.gohtml && \
    grep 'var count_steps int =' webserver.go && \
    [ -n "${PROD}" ] && \
    sed -i 's/.*\(log.SetOutput\)/    \1/' webserver.go && \
    echo "" > /go/src/webserver/go2.sh || echo

RUN go-bindata ./...  && \
    GOOS=linux GOARCH=386 go build -ldflags="-s -w" -a ./*.go && \
    mv bindata web && \
    chmod a+x web && \
    chmod a+x go2.sh
# RUN ls -lh web && \
#     [ -n "${PROD}" ] && upx --brute web; \
#     ls -lh web
RUN cd stabserver/ && CGO_ENABLED=0 GOOS=linux go build

# MAIN IMAGE
FROM sbeliakou/lab-k8s-master:latest
ENV HOME /root
WORKDIR /root
EXPOSE 8081 8022 8001 80 443 6443

COPY --from=build /go/src/webserver/web /var/_data/
COPY --from=build /go/src/webserver/config.yaml /var/_data/
COPY --from=build /go/src/webserver/templates /var/_data/templates
COPY --from=build /go/src/webserver/go2.sh /bin/go2
COPY --from=build /go/src/webserver/stabserver/stabserver /usr/bin/stab
COPY _env/_common-assets/gotty/bash-gotty /usr/sbin/gotty
RUN chmod a+x /usr/sbin/gotty
