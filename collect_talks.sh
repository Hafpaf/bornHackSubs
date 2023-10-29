#!/bin/bash

# TBH, this script is the result of a few minutes of prompts with ChatGPT 3.5
# It works, but is definely not pretty
#
# Usage: ./collect_talks.sh <media.ccc.de rss feed>
# example feed of BornHack 2023: https://media.ccc.de/c/bornhack2023/podcast/mp4-hq.xml

# Check if URL argument is provided
if [ -z "$1" ]; then
    echo "Please provide the URL of the RSS feed."
    exit 1
fi

# Retrieve the RSS feed content
rss_feed=$(curl -s "$1")

# Extract URLs from enclosure tags in the RSS feed
enclosure_urls=$(grep -o '<enclosure url="[^"]*' <<< "$rss_feed" | sed 's/<enclosure url="//')

# Print the extracted URLs
echo "$enclosure_urls"

# Download content using wget for each URL
for url in $enclosure_urls; do
    wget --no-verbose "$url"
done
