from django.test import TestCase

# Create your tests here.
# views.py または任意の適切な場所に以下のコードを追加します。

from django.shortcuts import render
from .models import Albums, Tracks

def your_view_function(request):
    # アルバムをすべて取得
    albums = Albums.objects.all()

    # 各アルバムに関連するトラックを取得するためのループ
    for album in albums:
        # ここでN回の追加のSELECTクエリが発生 (N+1問題)
        tracks = album.tracks.all()
        
        # 取得したトラックを処理する（例えば、表示するか何かを行う）
        for track in tracks:
            print(track.name)

    return render(request, 'your_template.html', {'albums': albums})
