ARG NODE_VERSION="24"

FROM node:${NODE_VERSION}-alpine3.22 

ENV CHROME_PATH=/chrome/linux-136.0.7103.113/chrome-linux64/chrome

RUN apt-get update && apt-get install -y libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm-dev \
    libxkbcommon-dev \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libgbm1 \
    libasound2 \
    libgtk-3-0

RUN npx @puppeteer/browsers install chrome@stable
