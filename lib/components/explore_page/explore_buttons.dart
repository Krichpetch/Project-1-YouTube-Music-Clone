import 'package:flutter/material.dart';

import '../../constant/constant.dart';

import '../../screens/blank_screen.dart';


class ExploreButtonRow extends StatelessWidget {
  const ExploreButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10.0, bottom: 25.0, left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            exploreButton(context, Icons.new_releases, "New releases"),
            exploreButton(context, Icons.show_chart, "Charts"),
            exploreButton(context, Icons.sentiment_satisfied, "Moods & genres"),
          ],
        ),
      ),
    );
  }

  Widget exploreButton(BuildContext context, IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 110,
        height: 95,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: themeSecondary,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen(
                                      label:
                                          "All Explore options goes here",
                                    )),
                          );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: textPrimary, size: 28),
              const SizedBox(height: 8),
              Text(
                label,
                style: textPlaylistTileSubtitle.copyWith(
                    color: textPrimary, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
