#!/bin/bash

# URLs directas de imágenes de Japón desde fuentes públicas
declare -A images=(
    ["dotonbori.jpg"]="https://images.unsplash.com/photo-1552503341-a7a1d36b68ff?w=1200&q=80"
    ["osaka_castle.jpg"]="https://images.unsplash.com/photo-1540959375944-7049f642e9ab?w=1200&q=80"
    ["umeda_sky_building.jpg"]="https://images.unsplash.com/photo-1522383507556-6b6eb1f88c55?w=1200&q=80"
    ["shinsekai.jpg"]="https://images.unsplash.com/photo-1549144611-11cacb2313e1?w=1200&q=80"
    ["kuromon.jpg"]="https://images.unsplash.com/photo-1555939594-58d7cb561849?w=1200&q=80"
    ["arashiyama.jpg"]="https://images.unsplash.com/photo-1522738849798-46f469798a0e?w=1200&q=80"
    ["fushimi_inari.jpg"]="https://images.unsplash.com/photo-1522383507556-6b6eb1f88c55?w=1200&q=80"
    ["nishiki_market.jpg"]="https://images.unsplash.com/photo-1544025162-d76694265947?w=1200&q=80"
    ["sensoji.jpg"]="https://images.unsplash.com/photo-1540959375944-7049f642e9ab?w=1200&q=80"
    ["shibuya.jpg"]="https://images.unsplash.com/photo-1552503341-a7a1d36b68ff?w=1200&q=80"
    ["akihabara.jpg"]="https://images.unsplash.com/photo-1549144611-11cacb2313e1?w=1200&q=80"
    ["hakone.jpg"]="https://images.unsplash.com/photo-1533050487297-4d71bcdd2085?w=1200&q=80"
    ["meiji_jingu.jpg"]="https://images.unsplash.com/photo-1522738849798-46f469798a0e?w=1200&q=80"
    ["tsukiji.jpg"]="https://images.unsplash.com/photo-1555939594-58d7cb561849?w=1200&q=80"
)

for filename in "${!images[@]}"; do
    url="${images[$filename]}"
    echo "Descargando $filename..."
    wget -q -O "$filename" "$url" && echo "✓ $filename descargado" || echo "✗ Error descargando $filename"
done

echo "Descarga completada"
