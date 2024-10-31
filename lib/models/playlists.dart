import '../models/songs.dart';
import '../models/user.dart';

class Playlist {

  final String playlistID;
  final String playlistName;
  final String playlistDescription;
  final String playlistCover;
  final String updateDate;
  final String uploader;
  final String uploaderImage;
  final String artists;
  final String numberOfSongs;
  final List<Song> songs;


  Playlist({
    required this.playlistID,
    required this.playlistName,
    required this.playlistDescription,
    required this.playlistCover,
    required this.updateDate,
    required this.uploader,
    required this.uploaderImage,
    required this.artists,
    required this.songs,
    required this.numberOfSongs,
  });
}

String getArtists(List<Song> songs) {
  // Extract artist names
  List<String> artistNames = songs.map((song) => song.artistName).toList();

  // Count occurrences of each artist
  Map<String, int> artistCount = {};
  for (var artist in artistNames) {
    artistCount[artist] = (artistCount[artist] ?? 0) + 1;
  }

  // Sort by count and then alphabetically
  var sortedArtists = artistCount.entries.toList()
    ..sort((a, b) {
      int countComparison = b.value.compareTo(a.value);
      return countComparison != 0 ? countComparison : a.key.compareTo(b.key);
    });

  // Get top 5 artists
  List<String> topArtists = sortedArtists.take(4).map((entry) => entry.key).toList();

  // Format the artist names
  if (topArtists.length > 1) {
    String lastArtist = topArtists.removeLast();
    return '${topArtists.join(', ')} and $lastArtist';
  } else if (topArtists.isNotEmpty) {
    return topArtists[0];
  } else {
    return '';
  }
}

String countTracks(List<Song> playlist) {
  return playlist.length.toString();
}


List<Playlist> allPlaylists =
   [
    secretLoveSongs
  ];


List<Song> secretLoveSongsList = [
  song_002,
  song_003,
  song_008,
  song_009,
  song_012,
  song_013,
  song_016,
  song_017,
  song_019,
  song_020,
  song_002,
  song_003,
  song_008,
  song_009,
  song_012,
  song_013,
  song_016,
  song_017,
  song_019,
  song_020,
];

  Playlist secretLoveSongs = 
  Playlist(
    playlistID: "secretLoveSongs",
    playlistName: "Secret Love Songs",
    playlistDescription:  "Discover heartfelt melodies that capture the essence of feelings hidden deep inside",
    playlistCover: "Playlist_01",
    updateDate: "11 October 2024",
    uploader: username,
    uploaderImage: userProfileImage,
    songs: secretLoveSongsList,
    artists: getArtists(secretLoveSongsList),
    numberOfSongs: countTracks(secretLoveSongsList),
  );

List<Song> top20SongsList = [
  song_001,
  song_002,
  song_003,
  song_004,
  song_005,
  song_006,
  song_007,
  song_008,
  song_009,
  song_010,
  song_011,
  song_012,
  song_013,
  song_014,
  song_015,
  song_016,
  song_017,
  song_018,
  song_019,
  song_020,
];

  Playlist top20Songs = 
  Playlist(
    playlistID: "top20Songs",
    playlistName: "YouTube Music Top 20 Songs",
    playlistDescription:  "The top 20 songs of all time from YouTube Music",
    playlistCover: "Playlist_07",
    updateDate: "11 October 2024",
    uploader: "YouTube Music",
    uploaderImage: "YouTube_Music",
    songs: top20SongsList,
    artists: getArtists(top20SongsList),
    numberOfSongs: countTracks(top20SongsList),
  );

List<Song> thaiMusicSongsList = [
  song_002,
  song_008,
  song_012,
  song_016,
  song_017,
  song_002,
  song_008,
  song_012,
  song_016,
  song_017,
  song_002,
  song_008,
  song_012,
  song_016,
  song_017,
];

  Playlist thaiMusic = 
  Playlist(
    playlistID: "thaiMusic",
    playlistName: "Thai Music",
    playlistDescription:  "Discover music from Thailand and enjoy the melodies from the land of smiles",
    playlistCover: "Playlist_02",
    updateDate: "11 October 2024",
    uploader: username,
    uploaderImage: userProfileImage,
    songs: thaiMusicSongsList,
    artists: getArtists(thaiMusicSongsList),
    numberOfSongs: countTracks(thaiMusicSongsList),
  );

List<Song> japanBopsSongsList = [
  song_004,
  song_007,
  song_013,
  song_014,
  song_015,
  song_004,
  song_007,
  song_013,
  song_014,
  song_015,
  song_004,
  song_007,
  song_013,
  song_014,
  song_015,
  song_004,
  song_007,
  song_013,
  song_014,
  song_015,
];

  Playlist japanBops = 
  Playlist(
    playlistID: "japanBops",
    playlistName: "Japanese Bops",
    playlistDescription:  "Listen to Japanese Bops that hits the charts",
    playlistCover: "Playlist_03",
    updateDate: "19 October 2024",
    uploader: "YouTube Music",
    uploaderImage: "YouTube_Music",
    songs: japanBopsSongsList,
    artists: getArtists(japanBopsSongsList),
    numberOfSongs: countTracks(japanBopsSongsList),
  );

List<Song> cryALittleSongsList = [
  song_005,
  song_010,
  song_016,
  song_019,
  song_005,
  song_010,
  song_016,
  song_019,
  song_005,
  song_010,
  song_016,
  song_019,
  song_005,
  song_010,
  song_016,
  song_019,
];

  Playlist cryALittle = 
  Playlist(
    playlistID: "cryALittle",
    playlistName: "Cry A Little",
    playlistDescription:  "May the blues go away as tears comes down your face",
    playlistCover: "Playlist_05",
    updateDate: "15 October 2024",
    uploader: username,
    uploaderImage: userProfileImage,
    songs: cryALittleSongsList,
    artists: getArtists(cryALittleSongsList),
    numberOfSongs: countTracks(cryALittleSongsList),
  );


List<Song> vibinSongsList = [
  song_001,
  song_002,
  song_004,
  song_006,
  song_011,
  song_014,
  song_018,
  song_001,
  song_002,
  song_004,
  song_006,
  song_011,
  song_014,
  song_018,
  song_001,
  song_002,
  song_004,
  song_006,
  song_011,
  song_014,
  song_018,
];

  Playlist vibin = 
  Playlist(
    playlistID: "vibin",
    playlistName: "Vibin with the beats",
    playlistDescription: "Dance to catchy beats that will make you move",
    playlistCover: "Playlist_04",
    updateDate: "12 October 2024",
    uploader: username,
    uploaderImage: userProfileImage,
    songs: vibinSongsList,
    artists: getArtists(vibinSongsList),
    numberOfSongs: countTracks(vibinSongsList),
  );
