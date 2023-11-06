# Cron-Morse-24-hour-Announcer
Simple 24 hour announcer in Morse code running on cron job

1. clone to your home dir
2. apt install sox
3. crontab -e and add 0 * * * * aplay /home/[edit]/morse_time/intro.wav && hour=$(date +\%H) && aplay /home/[edit]/morse_time/${hour}.wav


