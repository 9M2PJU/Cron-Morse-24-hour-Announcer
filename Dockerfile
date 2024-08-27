# Use Alpine Linux as the base image
FROM alpine:3.18

# Install required packages including ffplay for audio playback
RUN apk add --no-cache bash sox ffmpeg alsa-lib alsa-utils

# Set the working directory in the container
WORKDIR /app

# Copy the script and necessary files to the container
COPY morse.sh /app/morse.sh
COPY morse /app/morse

# Make the script executable
RUN chmod +x /app/morse.sh

# Add the cron job
RUN echo "0 * * * * /app/morse.sh" > /etc/crontabs/root

# Start cron
CMD ["crond", "-f"]

