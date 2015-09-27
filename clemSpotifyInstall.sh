mkdir -p -m 775 ~/.config/Clementine/spotifyblob/version14-64bit/
cd ~/.config/Clementine/spotifyblob/version14-64bit/
wget http://spotify.clementine-player.org/version14-64bit/blob
wget http://spotify.clementine-player.org/version14-64bit/libspotify.so.12.1.45
chmod 775 blob libspotify.so.12.1.45
mv libspotify.so.12.1.45 libspotify.so.12
