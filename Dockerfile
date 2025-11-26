ARG NODE_VERSION="24"

FROM node:${NODE_VERSION}-alpine3.22 

# Install necessary packages for Puppeteer
RUN apk add --no-cache \
    udev \
    ttf-freefont \
    chromium \
    libreoffice

# Set environment variables (optional but recommended)
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"
ENV PUPPETEER_EXECUTABLE_PATH="/usr/bin/chromium-browser"
