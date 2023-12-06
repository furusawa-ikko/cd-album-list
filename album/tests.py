from django.test import TestCase

from album.apps import AlbumConfig
from album.models import Artists

# Create your tests here.
for album in AlbumConfig.Albums:
    for track in Artists.Tracks:
        print(track.name)

