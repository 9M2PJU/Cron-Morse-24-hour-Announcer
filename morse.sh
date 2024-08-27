#!/bin/bash

# Define the paths to the audio files
intro_file="/app/morse/intro.mp3"
morse_mp3_dir="/app/morse/"

# Play the intro audio file
play "$intro_file"

# Get the current hour
hour=$(date "+%H")

# Play the corresponding Morse code audio file
play "$morse_mp3_dir/${hour}.mp3"

