#!/bin/bash

# Define the paths to the audio files
intro_file="/home/9m2pju/morse/intro.mp3"
morse_mp3_dir="/home/9m2pju/morse/morse_mp3"

# Play the intro audio file
mpg123 "$intro_file"

# Get the current hour
hour=$(date "+%H")

# Play the corresponding Morse code audio file
mpg123 "$morse_mp3_dir/${hour}.mp3"
