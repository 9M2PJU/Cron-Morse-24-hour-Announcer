# Use Alpine Linux as the base image
FROM alpine:latest

# Install required packages including cron, audio tools, and dependencies
RUN apk add --no-cache busybox-suid tzdata bash sox ffmpeg alsa-lib alsa-utils

# Set the working directory in the container
WORKDIR /app

# Copy the script and necessary files to the container
COPY morse.sh /app/morse.sh
COPY morse /app/morse

# Make the script executable
RUN chmod a+x /app/morse.sh

# Set the time zone to Asia/Kuala_Lumpur using the environment variable
ENV TZ=Asia/Kuala_Lumpur
RUN cp /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

# Add the cron job directly
RUN echo "0 * * * * /app/morse.sh" > /etc/crontabs/root

# Use an entrypoint script to start multiple processes
ENTRYPOINT ["/bin/sh", "-c", "crond -f -L /var/log/cron.log"]

