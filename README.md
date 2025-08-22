# Nextcloud Custom Docker Image with FFmpeg

This repository provides a **custom Docker image** for **Nextcloud production** with **FFmpeg pre-installed**, enabling video previews and transcoding.  
The image is automatically built and pushed to **GitHub Container Registry (GHCR)** whenever the base **Nextcloud production-apache** image is updated.

The base image is taken from the **official Nextcloud image** on Docker Hub: [https://hub.docker.com/_/nextcloud/](https://hub.docker.com/_/nextcloud/)

---

## Features

- Based on the **official Nextcloud production-apache image** from Docker Hub  
- **FFmpeg pre-installed** for video previews and transcoding  
- Tags include the **Nextcloud version** and `production-apache` for clarity  
- Fully automated build and push using **GitHub Actions**  

---

## Tags

| Tag | Description |
|-----|-------------|
| `ghcr.io/michalwilk/nextcloud-ffmpeg:<version>-apache` | Nextcloud version-specific image for production |
| `ghcr.io/michalwilk/nextcloud-ffmpeg:production-apache` | Latest production image, automatically updated |

---

## Usage

Pull the image from GHCR:

```bash
docker pull ghcr.io/michalwilk/nextcloud-ffmpeg:production-apache
# Or for a specific Nextcloud version:
docker pull ghcr.io/michalwilk/nextcloud-ffmpeg:<version>-apache
```

Run your container:

```bash
docker run -d \
  -p 8080:80 \
  -v /path/to/nextcloud/data:/var/www/html/data \
  ghcr.io/michalwilk/nextcloud-ffmpeg:production-apache
```

## License
All included software retains its original license. See individual project links for full license texts.
- **Nextcloud** ([GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)) – [https://nextcloud.com/](https://nextcloud.com/)
- **FFmpeg** ([LGPLv2.1 or GPLv3](https://ffmpeg.org/legal.html)) – [https://ffmpeg.org/](https://ffmpeg.org/)
