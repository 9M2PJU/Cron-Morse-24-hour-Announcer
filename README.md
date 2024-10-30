
## 🌐 Socials:
[![Facebook](https://img.shields.io/badge/Facebook-%231877F2.svg?logo=Facebook&logoColor=white)](https://facebook.com/https://www.facebook.com/faizul.9m2pju) [![TikTok](https://img.shields.io/badge/TikTok-%23000000.svg?logo=TikTok&logoColor=white)](https://tiktok.com/@9m2pju) [![YouTube](https://img.shields.io/badge/YouTube-%23FF0000.svg?logo=YouTube&logoColor=white)](https://youtube.com/@http://www.youtube.com/@9m2pju) 

# 💻 Tech Stack:
![Raspberry Pi](https://img.shields.io/badge/-RaspberryPi-C51A4A?style=for-the-badge&logo=Raspberry-Pi) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white) ![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54) ![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) ![Windows Terminal](https://img.shields.io/badge/Windows%20Terminal-%234D4D4D.svg?style=for-the-badge&logo=windows-terminal&logoColor=white) ![YAML](https://img.shields.io/badge/yaml-%23ffffff.svg?style=for-the-badge&logo=yaml&logoColor=151515) ![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=Cloudflare&logoColor=white) ![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
# 📊 GitHub Stats:
![](https://github-readme-stats.vercel.app/api?username=9M2PJU&theme=dark&hide_border=false&include_all_commits=false&count_private=false)<br/>
![](https://github-readme-streak-stats.herokuapp.com/?user=9M2PJU&theme=dark&hide_border=false)<br/>
![](https://github-readme-stats.vercel.app/api/top-langs/?username=9M2PJU&theme=dark&hide_border=false&include_all_commits=false&count_private=false&layout=compact)

## 🏆 GitHub Trophies
![](https://github-profile-trophy.vercel.app/?username=9M2PJU&theme=radical&no-frame=false&no-bg=true&margin-w=4)

---
[![](https://visitcount.itsvg.in/api?id=9M2PJU&icon=0&color=0)](https://visitcount.itsvg.in)

  ## 💰 You can help me by Donating
  [![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/9m2pju) 

  
<!-- Proudly created with GPRM ( https://gprm.itsvg.in ) -->

https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a

# Cron Morse 24 hour Announcer Docker

This project sets up a Docker container that runs a cron job every hour to play Morse code audio files using mpg123 and ALSA. The container is based on Alpine Linux.

## Features

- Runs a cron job every hour to execute a Morse code script.
- Uses mpg123 and ALSA for audio playback within the Docker container.
- Configurable time zone and audio device mappings.

## Prerequisites

Before you begin, ensure you have the following installed:

- Docker
- Docker Compose

## Getting Started

1. **Clone the Repository**

   ```
   git clone https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer.git
   cd Cron-Morse-24-hour-Announcer
   ```

2. **Set Up the Environment**

   Ensure Docker and Docker Compose are installed on your system. Follow the installation instructions if needed.

3. **Build the Docker Image**

   Build the Docker image using Docker Compose:

   ```
   docker compose build
   ```

4. **Run the Container**

   Start the Docker container in detached mode:

   ```
   docker compose up -d
   ```

5. **Access the Container**

   To enter the container and inspect or debug:

   ```
   docker run -it --rm --device /dev/snd morse_cron /bin/sh
   ```

## Configuration

- **Time Zone**: The container uses the `Asia/Kuala_Lumpur` time zone. You can adjust the `TZ` environment variable in the `docker-compose.yml` file if needed.
- **Audio Device**: ALSA sound device is mapped to the container. Ensure your host system’s sound device is accessible by Docker.

## Troubleshooting

If you encounter issues:

- Verify that the `/start-cron.sh` script is present and executable.
- Check ALSA configuration on both the host and inside the container.
- Inspect container logs for errors:

  ```
  docker logs <container_id>
  ```

## Contributing

Contributions are welcome! Please open issues or submit pull requests if you have suggestions or improvements.



