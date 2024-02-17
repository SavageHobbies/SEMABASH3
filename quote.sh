#!/bin/bash

# Website with inspirational quotes
QUOTE_URL="https://www.goodreads.com/quotes/tag/inspirational"

# Get HTML content
html=$(curl -s "$QUOTE_URL")

# Extract random quote and author
quote=$(echo "$html" | grep -Eo '<div class="quoteText">.*?</div>' | shuf -n 1 | sed 's/<[^>]*>//g')
author=$(echo "$html" | grep -Eo '<small.*?</small>' | shuf -n 1 | sed 's/<[^>]*>//g' | sed 's/^- //g')

# Display quote with attribution
echo -e "Quote:\n$quote\n"
echo -e "Author: $author"
