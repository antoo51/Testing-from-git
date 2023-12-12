# Stage 1 - Install dependencies and build the app
FROM ubuntu:20.04 AS builder

RUN apt-get update \
    && apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa \
    && apt-get clean

# Clone the flutter repo
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter \
    && cd /usr/local/flutter && git checkout 3.13.4

# Set flutter path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable web capabilities
RUN flutter config --enable-web \
    && flutter pub global activate webdev

# Copy files to container and build
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN flutter pub get \
    && flutter build web --dart-define=FLUTTER_WEB_USE_SKIA=true --release

# Set permissions for .env file
RUN chmod 644 /app/build/web/assets/.env

# Stage 2 - Create the run-time image
FROM nginx:stable-alpine AS runner

COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/build/web /usr/share/nginx/html
