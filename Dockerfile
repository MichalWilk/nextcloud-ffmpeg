ARG NEXTCLOUD_TAG=production-apache
FROM nextcloud:${NEXTCLOUD_TAG}

# Install ffmpeg and cleanup
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean && rm -rf /var/lib/apt/lists/*

