FROM postgis/postgis:14-3.2-alpine as builder

RUN apk update
RUN apk add postgis
RUN which shp2pgsql

FROM postgis/postgis:14-3.2-alpine

RUN apk add --no-cache postgresql-client bash openssl libgcc libintl libstdc++ ncurses-libs

COPY --from=builder /usr/bin/shp2pgsql /usr/bin/shp2pgsql

COPY ./data_shape/ /usr/data_shape

RUN shp2pgsql -D -I -s 4326 /usr/data_shape/r_estmun.shp est_mun > /docker-entrypoint-initdb.d/01-data.sql

COPY ./init/ /docker-entrypoint-initdb.d/
