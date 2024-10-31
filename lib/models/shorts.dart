import '../models/songs.dart';

class Shorts {
  final String videoName;
  final String songName;
  final String artistName;
  final int likeCount;
  final int commentsCount;
  final int viewsCount;
  final Song song;

  Shorts({
    required this.videoName,
    required this.songName,
    required this.artistName,
    required this.likeCount,
    required this.commentsCount,
    required this.viewsCount,
    required this.song,

  });
}

List<Shorts> allShortsVideo =
   [
    short_001,
    short_002,
    short_003,
    short_004,
    short_005,
    short_006,
  ];

 Shorts short_001 = Shorts(
    videoName: 'S01_Bruno_Mars_Lady_Gaga_DIE_WITH_A_SMILE',
    songName: "Die with a smile",
    artistName: 'Bruno Mars & Lady Gaga',
    likeCount: 2209074,
    commentsCount: 3732,
    viewsCount: 2701547844,
    song: song_001,
  );

   Shorts short_002 = Shorts(
    videoName: 'S02_Rose_Bruno_Mars_APT',
    songName: "APT.",
    artistName: 'ROSE & Bruno Mars',
    likeCount: song_006.likeCount,
    commentsCount: song_006.commentsCount,
    viewsCount: song_006.viewsCount,
    song: song_006,
  );

   Shorts short_003 = Shorts(
    videoName: 'S03_Miki_matsubara_Stay_With_Me',
    songName: "Stay with me",
    artistName: 'Miki Matsubara',
    likeCount: song_007.likeCount,
    commentsCount: song_007.commentsCount,
    viewsCount: song_007.viewsCount,
    song: song_007,
  );

   Shorts short_004 = Shorts(
    videoName: 'S04_Cocktail_Khoo_Chee_whit',
    songName: "คู่ชีวิต",
    artistName: 'Cocktail',
    likeCount: song_008.likeCount,
    commentsCount: song_008.commentsCount,
    viewsCount: song_008.viewsCount,
    song: song_008,
  );

  Shorts short_005 = Shorts(
    videoName: 'S05_Ed_Sheeran_Perfect',
    songName: "Perfect",
    artistName: 'Ed Sheeran',
    likeCount: song_009.likeCount,
    commentsCount: song_009.commentsCount,
    viewsCount: song_009.viewsCount,
    song: song_009,
  );

  Shorts short_006 = Shorts(
    videoName: 'S06_Bruno_Mars_Grenade',
    songName: "Grenade",
    artistName: 'Bruno Mars',
    likeCount: song_010.likeCount,
    commentsCount: song_010.commentsCount,
    viewsCount: song_010.viewsCount,
    song: song_010,
  );