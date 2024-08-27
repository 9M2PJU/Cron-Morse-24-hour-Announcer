



https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a





# Morse Cron

**Morse Cron** is a Docker-based application designed to play Morse code audio files on a schedule. It uses Alpine Linux as the base image, along with `sox` for audio playback and `cron` for scheduling tasks.

## Features

- Plays Morse code audio files on an hourly schedule.
- Configurable to use the Asia/Kuala_Lumpur time zone.
- Uses Docker for easy deployment and isolation.

## Prerequisites

- Docker
- Docker Compose (optional but recommended)

## Installation

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer.git
cd Cron-Morse-24-hour-Announcer
```

### 2. Build the Docker Image

To build the Docker image, run:

```bash
docker build -t morse-cron .
```

### 3. (Optional) Use Docker Compose

If you prefer using Docker Compose, make sure you have a `docker-compose.yml` file in your project directory. Here's a sample `docker-compose.yml`:

```yaml
version: '3.8'

services:
  morse-cron:
    build:
      context: .
    container_name: morse_cron
    devices:
      - /dev/snd:/dev/snd
    environment:
      - TZ=Asia/Kuala_Lumpur
    volumes:
      - ./morse:/app/morse
      - ./morse.sh:/app/morse.sh
    restart: always
```

Start the services with:

```bash
docker-compose up -d --build
```

### 4. Run the Container

If you're not using Docker Compose, you can run the container manually:

```bash
docker run -d \
  --name morse_cron \
  --device /dev/snd:/dev/snd \
  -e TZ=Asia/Kuala_Lumpur \
  -v $(pwd)/morse:/app/morse \
  -v $(pwd)/morse.sh:/app/morse.sh \
  morse-cron
```

## Configuration

### Time Zone

The container is configured to use the `Asia/Kuala_Lumpur` time zone. If you need to change this, update the `TZ` environment variable.

### Audio Files

Place your audio files in the `morse` directory. Ensure that the directory structure and file names match those expected by the `morse.sh` script.

## Usage

The container will automatically play Morse code audio files on an hourly schedule. The cron job is set up to run the `morse.sh` script every hour. The script plays an introductory audio file followed by the Morse code for the current hour.

## Troubleshooting

- **No Sound**: Ensure that the `/dev/snd` device is correctly mapped to the container and that your host system's sound configuration is correct.
- **Permission Issues**: Check file and directory permissions to ensure that the Docker container can access the necessary resources.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to make any additional adjustments as needed!
