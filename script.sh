rm *temp-*m4a

for thing in *.m4a
do
artist=$(echo "$thing" | awk -F--- '{print $1}')
album=$(echo "$thing" | awk -F--- '{print $2}')
track=$(echo "$thing" | awk -F--- '{print $3}' | sed -r 's/^\s+0*//' | xargs -n1 printf '%d\n')
title=$(echo "$thing" | awk -F--- '{print $4}' | sed 's/[.]m4a$//')

# Title fixup
title=$(echo "$title" | sed 's/Bad Religion - //')

echo "Artist $artist"
echo "Album $album"
echo "Track $track"
echo "Title $title"

done
