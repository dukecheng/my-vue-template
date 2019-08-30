# production stage
FROM nginx:1.17-alpine as production-stage
ARG source
COPY ${source:-dist} /usr/share/nginx/html
COPY ${source:-default.template} /etc/nginx/conf.d/default.template
# RUN sed -i '/location \/ {/a\try_files $uri $uri\/ \/index.html;' /etc/nginx/conf.d/default.conf
ENV API_URI http://apihost/api/
CMD ["/bin/sh","-c","envsubst '${API_URI}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
#CMD ["nginx","-g","daemon off;"]