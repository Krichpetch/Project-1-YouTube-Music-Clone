class Song {
  final String imageName;
  final String songName;
  final String artistName;
  final int likeCount;
  final int commentsCount;
  final int viewsCount;
  final String duration;
  late bool isLiked;
  late bool isDisliked;

  Song({
    required this.imageName,
    required this.songName,
    required this.artistName,
    required this.likeCount,
    required this.commentsCount,
    required this.viewsCount,
    required this.duration,
    required this.isLiked,
    required this.isDisliked,
  });
}

List<Song> allSongs = [
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

Song song_001 = Song(
  imageName: '01_Bruno_Mars-Thats_What_I_Like',
  songName: "That's what I like",
  artistName: 'Bruno Mars',
  likeCount: 2209074,
  commentsCount: 3732,
  viewsCount: 2701547844,
  duration: "3:30",
  isLiked: false,
  isDisliked: false,
);

Song song_002 = Song(
  imageName: '02_Ice_Saranyu-Khon_Man_Rak',
  songName: "คนมันรัก",
  artistName: 'ไอซ์ ศรัณยู',
  likeCount: 15432,
  commentsCount: 41,
  viewsCount: 22000000,
  duration: "3:50",
  isLiked: false,
  isDisliked: false,
);

Song song_003 = Song(
  imageName: '03_Stephen_Sanchez-Until_I_Found_You',
  songName: "Until I found you",
  artistName: 'Stephen Sanchez',
  likeCount: 1346587,
  commentsCount: 4721,
  viewsCount: 1035417621,
  duration: "2:55",
  isLiked: false,
  isDisliked: false,
);

Song song_004 = Song(
  imageName: '04_Hoshimachi_Suisei-Moonlight',
  songName: "Moonlight",
  artistName: '星街すいせい',
  likeCount: 12345,
  commentsCount: 78,
  viewsCount: 2613250,
  duration: "3:25",
  isLiked: false,
  isDisliked: false,
);

Song song_005 = Song(
  imageName: '05_Bruno_Mars_Lady_Gaga_DIE_WITH_A_SMILE',
  songName: "Die With a Smile",
  artistName: 'Lady Gaga, Bruno Mars',
  likeCount: 4125634,
  commentsCount: 15839,
  viewsCount: 238637435,
  duration: "4:12",
  isLiked: false,
  isDisliked: false,
);

Song song_006 = Song(
  imageName: '06_Rose_Bruno_Mars_APT',
  songName: "APT.",
  artistName: 'Bruno Mars, ROSE',
  likeCount: 7312645,
  commentsCount: 340730,
  viewsCount: 220409253,
  duration: "2:53",
  isLiked: false,
  isDisliked: false,
);

Song song_007 = Song(
  imageName: '07_Miki_matsubara_Stay_With_Me',
  songName: "Stay With Me",
  artistName: 'Miki Matsubara',
  likeCount: 1132236,
  commentsCount: 22388,
  viewsCount: 60399947,
  duration: "5:12",
  isLiked: false,
  isDisliked: false,
);

Song song_008 = Song(
  imageName: '08_Cocktail_Khoo_Chee_whit',
  songName: "คู่ชีวิต",
  artistName: 'Cocktail',
  likeCount: 921430,
  commentsCount: 21227,
  viewsCount: 269971623,
  duration: "5:47",
  isLiked: false,
  isDisliked: false,
);

Song song_009 = Song(
  imageName: '09_Ed_Sheeran_Perfect',
  songName: "Perfect",
  artistName: 'Ed Sheeran',
  likeCount: 21457110,
  commentsCount: 551478,
  viewsCount: 3829182463,
  duration: "4:39",
  isLiked: false,
  isDisliked: false,
);

Song song_010 = Song(
  imageName: '10_Bruno_Mars_Grenade',
  songName: "Grenade",
  artistName: 'Bruno Mars',
  likeCount: 5844172,
  commentsCount: 306794,
  viewsCount: 1205206129,
  duration: "3:40",
  isLiked: false,
  isDisliked: false,
);

Song song_011 = Song(
  imageName: '11_Bruno_Mars_Uptown_Funk_720p',
  songName: "Uptown Funk",
  artistName: 'Bruno Mars',
  likeCount: 22315441,
  commentsCount: 624774,
  viewsCount: 5374202121,
  duration: "4:30",
  isLiked: false,
  isDisliked: false,
);

Song song_012 = Song(
  imageName: '12_Nont_Tanont_Jum_Non',
  songName: " จำนน (White Flag) ",
  artistName: 'นนท์ ธนนท์',
  likeCount: 103265,
  commentsCount: 2592,
  viewsCount: 43823663,
  duration: "4:27",
  isLiked: false,
  isDisliked: false,
);

Song song_013 = Song(
  imageName: '13_Mosawo_Gyutto',
  songName: "ぎゅっと",
  artistName: 'Mosawo',
  likeCount: 531897,
  commentsCount: 12023,
  viewsCount: 59889909,
  duration: "4:32",
  isLiked: false,
  isDisliked: false,
);

Song song_014 = Song(
  imageName: '14_One_Piece_We_Are',
  songName: "We Are (One Piece Opening 1)",
  artistName: 'One Piece',
  likeCount: 281647,
  commentsCount: 10992,
  viewsCount: 33854587,
  duration: "2:25",
  isLiked: false,
  isDisliked: false,
);

Song song_015 = Song(
  imageName: '15_Kessoku_Band_If_I_Could_Be_A_Constellation',
  songName: "If I Could Be a Constellation",
  artistName: 'Kessoku Band',
  likeCount: 123000,
  commentsCount: 8469,
  viewsCount: 18735253,
  duration: "4:18",
  isLiked: false,
  isDisliked: false,
);

Song song_016 = Song(
  imageName: '16_Bird_Thongchai_Tong_Thot_Daow',
  songName: "ต้องโทษดาว",
  artistName: 'เบิร์ด ธงไชย แมคอินไตย์',
  likeCount: 2141,
  commentsCount: 15839,
  viewsCount: 17365871,
  duration: "4:01",
  isLiked: false,
  isDisliked: false,
);

Song song_017 = Song(
  imageName: '17_Serious_Bacon_PP_Tad_Van_Hai_Noi',
  songName: "พี่ๆตัดแว่นให้หน่อย",
  artistName: 'SERIOUS BACON',
  likeCount: 182749,
  commentsCount: 1930,
  viewsCount: 34198772,
  duration: "4:12",
  isLiked: false,
  isDisliked: false,
);

Song song_018 = Song(
  imageName: '18_Luis_Fonsi_Despacito',
  songName: "Despacito",
  artistName: 'Luis Fonsi',
  likeCount: 54124872,
  commentsCount: 4282718,
  viewsCount: 8575966201,
  duration: "4:41",
  isLiked: false,
  isDisliked: false,
);

Song song_019 = Song(
  imageName: '19_Jayesslee_Officially_Missing_You',
  songName: "Officially Missing You",
  artistName: 'Jayesslee',
  likeCount: 56141,
  commentsCount: 198,
  viewsCount: 12735800,
  duration: "3:43",
  isLiked: false,
  isDisliked: false,
);

Song song_020 = Song(
  imageName: '20_Taylor_Swift_Enchanted',
  songName: "Enchanted",
  artistName: 'Taylor Swift',
  likeCount: 671451,
  commentsCount: 15839,
  viewsCount: 54653813,
  duration: "5:56",
  isLiked: false,
  isDisliked: false,
);
