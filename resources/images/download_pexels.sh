#!/bin/bash

# URLs directas de Pexels (sin autenticación requerida)
declare -A images=(
    ["dotonbori.jpg"]="https://images.pexels.com/photos/2398220/pexels-photo-2398220.jpeg?w=640&h=427"
    ["osaka_castle.jpg"]="https://images.pexels.com/photos/3246604/pexels-photo-3246604.jpeg?w=640&h=427"
    ["umeda_sky_building.jpg"]="https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?w=640&h=427"
    ["shinsekai.jpg"]="https://images.pexels.com/photos/3935696/pexels-photo-3935696.jpeg?w=640&h=427"
    ["kuromon.jpg"]="https://images.pexels.com/photos/7974076/pexels-photo-7974076.jpeg?w=640&h=427"
    ["arashiyama.jpg"]="https://images.pexels.com/photos/3246604/pexels-photo-3246604.jpeg?w=640&h=427"
    ["fushimi_inari.jpg"]="https://images.pexels.com/photos/2398220/pexels-photo-2398220.jpeg?w=640&h=427"
    ["nishiki_market.jpg"]="https://images.pexels.com/photos/5475327/pexels-photo-5475327.jpeg?w=640&h=427"
    ["sensoji.jpg"]="https://images.pexels.com/photos/3935696/pexels-photo-3935696.jpeg?w=640&h=427"
    ["shibuya.jpg"]="https://images.pexels.com/photos/2398220/pexels-photo-2398220.jpeg?w=640&h=427"
    ["akihabara.jpg"]="https://images.pexels.com/photos/3246604/pexels-photo-3246604.jpeg?w=640&h=427"
    ["hakone.jpg"]="https://images.pexels.com/photos/2641886/pexels-photo-2641886.jpeg?w=640&h=427"
    ["meiji_jingu.jpg"]="https://images.pexels.com/photos/3935696/pexels-photo-3935696.jpeg?w=640&h=427"
    ["tsukiji.jpg"]="https://images.pexels.com/photos/7974076/pexels-photo-7974076.jpeg?w=640&h=427"
)

for filename in "${!images[@]}"; do
    url="${images[$filename]}"
    echo "Descargando $filename..."
    wget --user-agent="Mozilla/5.0" -q -O "$filename" "$url" && echo "✓ $filename ($(stat -c%s "$filename") bytes)" || echo "✗ Error: $filename"
done

ls -lh *.jpg
