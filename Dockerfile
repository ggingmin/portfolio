FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./* ./

RUN addgroup --system --gid 1001 worker
RUN adduser --system --uid 1001 worker

USER worker


ENTRYPOINT ["nginx", "-g", "daemon off;"]
