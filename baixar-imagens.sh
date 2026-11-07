#!/bin/bash
# Baixa as fotos originais do site antigo (Wix) para a pasta img/.
# Rode UMA vez, de dentro da pasta do site:  bash baixar-imagens.sh
set -e
cd "$(dirname "$0")"
mkdir -p img
B="https://static.wixstatic.com/media"

baixar () {
  echo "Baixando $2 ..."
  curl -fsSL -o "img/$2" "$B/$1"
}

baixar "e97535_d31d83cba7d74215a1ff791c07e9c01e~mv2.jpg"  consultorio.jpg
baixar "e97535_acac25005688444d97d5771a28041a1e~mv2.jpg"  sala-estar.jpg
baixar "e97535_6f759e2b4d3f4b2da2cdd94862e1bcb5~mv2.jpg"  predio.jpg
baixar "e97535_76b54a8647c54a56b678001b115ca45c~mv2.jpg"  predio-2.jpg
baixar "e97535_a3d8d12559f149f6b708b2de9a7840a0~mv2.jpg"  curriculo-foto.jpg
baixar "e97535_96e514786a7f4cedbd2486b62832a9d8~mv2.webp" curriculo-2.webp
baixar "b2d28adfe615489ead001edccd3ae396.jpg"             curriculo-3.jpg
baixar "e97535_a332724be06b46bc9506c79c7bf0f9a0~mv2.jpg"  og.jpg

echo "Pronto. Imagens salvas em img/"
ls -lh img
