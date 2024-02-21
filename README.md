# Cron-Morse-24-hour-Announcer
Simple 24 hour announcer in Morse code running on cron job



https://github.com/9M2PJU/Cron-Morse-24-hour-Announcer/assets/991353/f30c70d4-7e00-4d8f-929b-603c0cf3134a



1. download/clone to your home dir
2. apt install mpg123
3. crontab -e and add @hourly mpg123 /path/to/morse/intro.mp3 && hour=$(date "+%H") && mpg123 /path/to/morse/morse_mp3/${hour}.mp3



