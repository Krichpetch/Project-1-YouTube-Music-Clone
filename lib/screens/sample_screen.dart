import 'package:flutter/material.dart';

import '../models/shorts.dart';

import '../components/samples_page/shorts_video.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Transform.scale(
          scale: 0.68,
          child: Image.asset('assets/icons/YT_Music_long_White.png'),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 125,
      ),
      body: PageView.builder(
        scrollDirection:
            Axis.vertical, // Vertical scrolling for short-style videos
        itemCount: allShortsVideo.length,
        itemBuilder: (context, index) {
          return ShortVideoPlayer(
            short:
                allShortsVideo[index], // Pass each Shorts item to ShortsVideo
          );
        },
      ),
    );
  }
}
