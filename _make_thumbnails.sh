#!/bin/sh
# 為 images/ 裡還沒有縮圖的圖片產生 160x160 縮圖到 tn/images/
# 用法：在 homepage 資料夾執行 sh _make_thumbnails.sh
python -I - <<'EOF'
import os
from PIL import Image
for n in sorted(os.listdir('images')):
    src, dst = os.path.join('images', n), os.path.join('tn', 'images', n)
    if not n.lower().endswith(('.jpg', '.jpeg', '.png')) or os.path.exists(dst):
        continue
    im = Image.open(src)
    im.thumbnail((160, 160))
    if n.lower().endswith(('.jpg', '.jpeg')):
        im = im.convert('RGB')
    im.save(dst)
    print('created', dst)
EOF
