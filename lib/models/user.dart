import '../models/songs.dart';
import '../models/playlists.dart';
import '../models/artists.dart';

// Profile details
const String userProfileImage = 'Suisei';
const String username = "Krichpetch Sintanakul";
const String userEmail = "s6507012662021@email.kmutnb.ac.th";

// Dynamic user items (liked playlists, etc.)
List<dynamic> userItems = [likedPlaylist,top20Songs, secretLoveSongs, thaiMusic,cryALittle, brunoMars, secretLoveSongs, song_004, song_012, japanBops, song_008,vibin];

// The list that will hold all liked songs
List<Song> likedSongs = [];

// Playlist for liked music (non-constant so it can be updated)
Playlist likedPlaylist = Playlist(
  playlistID: "likedPlaylist",
  playlistName: "Liked Music",
  playlistDescription: "Music you liked in any YouTube apps will show here.",
  playlistCover: "Playlist_06",
  updateDate: "30 October 2024",
  uploader: username,
  uploaderImage: userProfileImage,
  songs: likedSongs,
  artists: getArtists(likedSongs),
  numberOfSongs: countTracks(likedSongs),
);

// Function to fetch all liked songs and update `likedPlaylist`
void fetchLikedSongs() {
  likedSongs.clear();

  // Populate likedSongs list
  for (var song in allSongs) {
    if (song.isLiked) {
      likedSongs.add(song);
    }
  }

  // Update the likedPlaylist with the latest liked songs
  likedPlaylist = Playlist(
    playlistID: "likedPlaylist",
    playlistName: "Liked Music",
    playlistDescription: "Music you liked in any YouTube apps will show here.",
    playlistCover: "Playlist_06",
    updateDate: "30 October 2024",
    uploader: username,
    uploaderImage: userProfileImage,
    songs: likedSongs,
    artists: getArtists(likedSongs),
    numberOfSongs: countTracks(likedSongs),
  );
}