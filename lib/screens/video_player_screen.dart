import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../components/song_player_page/switch_button.dart';
import '../components/song_player_page/song_title_player.dart';
import '../components/cover_images/cover_image.dart';
import '../components/song_player_page/video_functions.dart';
import '../components/song_player_page/video_controller_button.dart';

import '../functions/functions.dart';

import '../constant/constant.dart';

import '../models/songs.dart';

class MusicVideoPlayerPage extends StatefulWidget {
  final Song song;

  const MusicVideoPlayerPage(
      {required this.song,
      super.key});

  @override
  _MusicVideoPlayerPageState createState() => _MusicVideoPlayerPageState();
}

class _MusicVideoPlayerPageState extends State<MusicVideoPlayerPage> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool showVideo = false;
  bool isPlaying = true;
  bool _isLooping = false;
  double _currentSliderValue = 0.0;


  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() {
    _videoPlayerController =
        VideoPlayerController.asset(getVideoPath(widget.song.imageName))
          ..addListener(() 
          {
            setState(() {
              _currentSliderValue =
                  _videoPlayerController.value.position.inSeconds.toDouble();
            });
            print(getVideoPath(widget.song.imageName));
          });

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: false,
      showControls: false,
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  void toggleView(bool isSelected) {
    setState(() {
      showVideo = isSelected;
    });
  }

  void _togglePlayPause() {
    setState(() {
      isPlaying
          ? _videoPlayerController.pause()
          : _videoPlayerController.play();
      isPlaying = !isPlaying;
    });
    
  }

  
  void _toggleLooping() {
    setState(() {
      _isLooping = !_isLooping;
    });
  }


  // Helper function to format the duration into "mm:ss"
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = duration.inMinutes
        .remainder(60)
        .toString(); // Remove padding for minutes
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 25,
                color: textPrimary,
              ),
            ),
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            CustomSwitchAppBar(
              option1: "Song",
              option2: "Video",
              onChanged: toggleView,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.white,
            size: 22,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 22,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: _buildContent(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        const SizedBox(height: 33),
        Stack(
          children: [
            showVideo
                ? SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: Center(
                      child: _videoPlayerController.value.isInitialized
                          ? Chewie(controller: _chewieController!)
                          : const CircularProgressIndicator(),
                    ),
                  )
                : CoverImage(imageName: widget.song.imageName, borderRadius: 16.0,),
          ],
        ),
        SongTitlePlayer(
          songName: widget.song.songName,
          artist: widget.song.artistName,
        ),
        VideoFunctions(
          song: widget.song,
        ),
        const SizedBox(height: 18),
        Column(
          children: [
            // Customizing the Slider
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 0.2,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 6.5,
                ),
                thumbColor: textPrimary,
                activeTrackColor: textPrimary,
                inactiveTrackColor: textPrimary,
              ),
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: _videoPlayerController.value.duration.inSeconds.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _videoPlayerController
                        .seekTo(Duration(seconds: value.toInt()));
                    _currentSliderValue = value;
                  });
                },
              ),
            ),

            // Current time and total duration
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Distribute space evenly
                children: [
                  Text(
                    _formatDuration(
                        Duration(seconds: _currentSliderValue.toInt())),
                    style: textTime,
                  ),
                  Text(
                    _formatDuration(_videoPlayerController.value.duration),
                    style: textTime,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtherControlButtons(
              icon: Icons.shuffle_sharp,
              size: 25.0,
              color: textSecondary,
              onPressed: doNothing,
            ),
             OtherControlButtons(
              icon: Icons.skip_previous,
              size: 35.0,
              color: textPrimary,
              onPressed: doNothing,
            ),
            PlayPauseButton(isPlaying: isPlaying, onPressed: _togglePlayPause),
            OtherControlButtons(
              icon: Icons.skip_next,
              size: 35.0,
              color: textPrimary,
              onPressed: doNothing,
            ),
            OtherControlButtons(
              icon: Icons.repeat,
              size: 25.0,
              color: textSecondary,
              onPressed: _toggleLooping,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}