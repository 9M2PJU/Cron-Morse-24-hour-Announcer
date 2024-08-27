https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a

# Hourly Morse Announce Docker

This project sets up a Docker container that runs a cron job every hour to play Morse code audio files using ALSA. The container is based on Alpine Linux and includes PulseAudio support for audio playback.

## Features

- Runs a cron job every hour to execute a Morse code script.
- Uses ALSA for audio playback within the Docker container.
- Configurable time zone and audio device mappings.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

### 1. Clone the Repository


git clone https://github.com/yourusername/hourly_morse_announce_docker.git
cd hourly_morse_announce_docker
2. Set Up the Environment
Ensure that Docker and Docker Compose are installed on your system. Follow the installation instructions on the Docker website if needed.

3. Build the Docker Image
Build the Docker image using Docker Compose:

bash
Copy code
docker compose build
4. Run the Container
Start the Docker container with:

bash
Copy code
docker compose up -d
5. Check Logs
To view the logs from the container, use:

bash
Copy code
docker compose logs morse-cron
6. Access the Container
To enter the container and inspect or debug, use:

bash
Copy code
docker run -it --rm --device /dev/snd morse_cron /bin/sh
Configuration
Time Zone: The container is configured to use the Asia/Kuala_Lumpur time zone. Adjust the TZ environment variable in the docker-compose.yml file if needed.
Audio Device: The ALSA sound device is mapped to the container. Ensure your host system’s sound device is accessible by Docker.
Troubleshooting
If the container fails to start or the cron job does not execute, check the following:

Ensure /start-cron.sh script is present and executable.

Verify that ALSA is properly configured on both the host and inside the container.

Inspect container logs for errors:

bash
Copy code
docker logs <container_id>
Contributing
Feel free to open issues or submit pull requests if you have suggestions or improvements.

License
This project is licensed under the MIT License. See the LICENSE file for details.

