import 'package:flutter/material.dart';
import '../../components/cover_images/cover_image.dart';
import '../../constant/constant.dart';

class PlaylistTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const PlaylistTitle({
    required this.title,
    required this.subtitle,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            children: [
              const SizedBox(
                height: 23,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 34,
                      height: 34,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child:  CoverImage(
                          imageName: image , borderRadius: 5.0),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitle.toUpperCase(), style: textPlaylistSubtitle),
                      Text(title, style: textPlaylistTitle),
                    ],
                  )
                ],
              ),
            ],
          ),
        ]));
  }
}
