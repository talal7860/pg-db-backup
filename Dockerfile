FROM postgres:11.11-alpine
WORKDIR /app
RUN apk add --no-cache \
        bash \
        python3 \
        curl \
    && rm -rf /var/cache/apk/*
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-330.0.0-linux-x86_64.tar.gz && tar -xvzf google-cloud-sdk-330.0.0-linux-x86_64.tar.gz && ./google-cloud-sdk/install.sh && rm -rf google-cloud-sdk-330.0.0-linux-x86_64.tar.gz
COPY . .
