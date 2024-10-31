import 'package:flutter/material.dart';
import '../../constant/constant.dart';

class OtherControlButtons extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final VoidCallback onPressed;

  const OtherControlButtons({
    super.key,
    required this.icon,
    required this.size,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: IconButton(
          icon: Icon(
            icon,
            color: color,
            size: size,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class PlayPauseButton extends StatelessWidget {
  final bool isPlaying;
  final VoidCallback onPressed;

  const PlayPauseButton({
    super.key,
    required this.isPlaying,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: Tween<double>(begin: 0.8, end: 1.0).animate(animation),
                  child: child,
                ),
              );
            },
            child: IconButton(
              key: ValueKey<bool>(isPlaying),
              icon: isPlaying
                  ? const Icon(Icons.pause_sharp,
                      color: themePrimary, size: 40.0)
                  : const Icon(Icons.play_arrow,
                      color: themePrimary, size: 40.0),
              onPressed: onPressed,
            ),
          ),
        ),
      ),
    );
  }
}

class PlaylistButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final double radius;
  final Color color;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const PlaylistButton({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.radius,
    required this.color,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        child: CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
          child: IconButton(
            icon: Icon(
              icon,
              color: color,
              size: iconSize,
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
