# Cron-Morse-24-hour-Announcer
Simple 24 hour announcer in Morse code running on cron job



https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a



1. clone to your home dir
2. apt install sox
3. crontab -e and add 0 * * * * aplay /home/[edit]/morse_time/intro.wav && hour=$(date +\%H) && aplay /home/[edit]/morse_time/${hour}.wav


