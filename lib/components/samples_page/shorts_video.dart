import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:youtube_music_clone/constant/constant.dart';

import '../../components/samples_page/shorts_button.dart';
import '../../components/tiles/list_tiles.dart';

import '../../functions/functions.dart';

import '../../models/shorts.dart';

class ShortVideoPlayer extends StatefulWidget {
  final Shorts short;

  const ShortVideoPlayer({required this.short, super.key});

  @override
  _ShortVideoPlayerState createState() => _ShortVideoPlayerState();
}

class _ShortVideoPlayerState extends State<ShortVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController =
        VideoPlayerController.asset(getVideoPath(widget.short.videoName));

    await _videoPlayerController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: false,
    );

    setState(() {});
  }

  void _togglePlayPause() {
    setState(() {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play();
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: themePrimary,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          // Video player
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                _togglePlayPause();
              },
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: _videoPlayerController.value.isInitialized
                      ? Chewie(controller: _chewieController!)
                            : const CircularProgressIndicator(),
                        )
                ),
              ),
            ),

          ShortsButton(
            short: widget.short,
          ),

          // SongTile positioned at the bottom of the screen
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
                color: Colors.transparent,
                child: SongTile(song: widget.short.song)),
          ),
        ],
      ),
    );
  }
}
