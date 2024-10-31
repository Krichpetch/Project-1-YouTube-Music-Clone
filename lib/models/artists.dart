import '../models/songs.dart';

class Artist {
  final String artistProfile;
  final String artistName;
  final int followerCount;
  final List<Song> songs;


  Artist({
    required this.artistProfile,
    required this.artistName,
    required this.followerCount,
    required this.songs,
  });
}

List<Artist> allArtists =
   [
    brunoMars,
  ];


List<Song> brunoMarsSongs = [
  song_001,
  song_005,
  song_006,
  song_010,
  song_011,
  song_001,
  song_005,
  song_006,
  song_010,
  song_011,
  song_001,
  song_005,
  song_006,
  song_010,
  song_011,

];

Artist brunoMars = 
  Artist(
    artistProfile: "A01_Bruno_Mars",
    artistName: "Bruno Mars",
    followerCount: 38614124,
    songs: brunoMarsSongs
  );