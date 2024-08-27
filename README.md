https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a

Hourly Morse Announce Docker
This project sets up a Docker container that runs a cron job every hour to play Morse code audio files using ALSA. The container is based on Alpine Linux and includes PulseAudio support for audio playback.

Features
Runs a cron job every hour to execute a Morse code script.
Uses ALSA for audio playback within the Docker container.
Configurable time zone and audio device mappings.
Prerequisites
Before you begin, ensure you have the following installed:

Docker
Docker Compose
Getting Started
Clone the Repository

bash
Copy code
git clone https://github.com/yourusername/hourly_morse_announce_docker.git
cd hourly_morse_announce_docker
Set Up the Environment

Ensure Docker and Docker Compose are installed on your system. Follow the installation instructions if needed.

Build the Docker Image

Build the Docker image using Docker Compose:

Copy code
docker compose build
Run the Container

Start the Docker container in detached mode:

Copy code
docker compose up -d
Check Logs

To view the logs from the container:

Copy code
docker compose logs morse-cron
Access the Container

To enter the container and inspect or debug:

bash
Copy code
docker run -it --rm --device /dev/snd morse_cron /bin/sh
Configuration
Time Zone: The container uses the Asia/Kuala_Lumpur time zone. You can adjust the TZ environment variable in the docker-compose.yml file if needed.
Audio Device: ALSA sound device is mapped to the container. Ensure your host system’s sound device is accessible by Docker.
Troubleshooting
If you encounter issues:

Verify that the /start-cron.sh script is present and executable.

Check ALSA configuration on both the host and inside the container.

Inspect container logs for errors:

php
Copy code
docker logs <container_id>
Contributing
Contributions are welcome! Please open issues or submit pull requests if you have suggestions or improvements.

License
This project is licensed under the MIT License. See the LICENSE file for details.



