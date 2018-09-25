#!/bin/bash
APP_DIR="/app"

export NODE_ENV="production"
export PORT=${PORT}
$(AWS_ENV_PATH=/${ENVTYPE}/${ENVID}/amberlens/env AWS_REGION=us-east-1 /app/aws-env)
cd "${APP_DIR}" && npm run start

