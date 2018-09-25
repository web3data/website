FROM node:10.8-stretch AS build
ARG ENVTYPE
ARG ENVID
ENV ENVTYPE=${ENVTYPE}
ENV ENVID=${ENVID}
WORKDIR /build
COPY . .
RUN wget https://s3.amazonaws.com/amberdata-repo-generic-us-east-1/aws-env && \
    mv entrypoint.sh . && \
    chmod +x aws-env && chmod +x entrypoint.sh && \
    $(AWS_ENV_PATH=/${ENVTYPE}/${ENVID}/amberlens/env AWS_REGION=us-east-1 ./aws-env) && \
    env && \
    npm install --only=production && \
    npm run build --only=production && \
    rm -rf !$/.git*

FROM node:10.8-slim
ENV ENVTYPE=${ENVTYPE}
ENV ENVID=${ENVID}
ENV PORT=${PORT}
WORKDIR /app
COPY --chown=node:node --from=build /build .
RUN chown -R node:node /app
USER node
EXPOSE ${PORT}
ENTRYPOINT ["/app/entrypoint.sh"]

