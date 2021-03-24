# Take screenshot
maim > /tmp/.elv.ss.png

# Add border
convert /tmp/.elvss.png -bordercolor '#EDD7BD' -border 4 /tmp/.elvss.png

# Add shadow
convert /tmp/.elvss.png '(' +clone -background '#575279' -shadow 60x6+3+3 ')' +swap -background none -layers merge +repage /tmp/.elvss.png


# Copy to clipboard
xclip -selection clipboard -t image/png /tmp/.elvss.png

# Remove file
rm /tmp/.elvss.png

# # One liner
# maim | convert - -bordercolor '#EDD7BD' -border 4 '(' +clone -background '#575279' -shadow 60x6+3+3 ')' +swap -background none -layers merge +repage /tmp/.elvss.png; xclip -selection clipboard -t image/png /tmp/.elvss.png; rm /tmp/.elvss.png 
