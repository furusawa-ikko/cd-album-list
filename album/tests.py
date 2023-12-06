from django.test import TestCase

from album.models import Albums



# Create your tests here.
for album in Albums.objects.all():
    for track in album.Tracks:
        print(track.name)

