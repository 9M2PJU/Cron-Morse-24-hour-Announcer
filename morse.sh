#!/bin/sh

# Define the paths to the audio files
intro_file="/app/morse/intro.mp3"
morse_mp3_dir="/app/morse"

# Play the intro audio file if it exists
if [ -f "$intro_file" ]; then
  mpg123 "$intro_file"
else
  echo "Intro file $intro_file not found!"
fi

# Get the current hour
hour=$(date "+%H")

# Construct the path to the hour-specific Morse code audio file
hour_file="$morse_mp3_dir/${hour}.mp3"

# Play the hour-specific Morse code audio file if it exists
if [ -f "$hour_file" ]; then
  mpg123 "$hour_file"
else
  echo "Morse code file for hour $hour not found!"
fi
