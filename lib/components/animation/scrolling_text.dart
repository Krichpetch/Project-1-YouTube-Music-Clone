import 'package:flutter/material.dart';

class ScrollingText extends StatefulWidget {
  final String title;
  final TextStyle textStyle;

  const ScrollingText({
    super.key,
    required this.title,
    required this.textStyle,
  });

  @override
  _ScrollingTextState createState() => _ScrollingTextState();
}

class _ScrollingTextState extends State<ScrollingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 15))
          ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get the width of the screen
    double screenWidth = MediaQuery.of(context).size.width;

    // Calculate the width of the text
    final textPainter = TextPainter(
      text: TextSpan(text: widget.title, style: widget.textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    // Determine if scrolling is necessary
    bool shouldScroll = textPainter.width + 30 >= screenWidth;

    return ClipRect(
      child: shouldScroll
          ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  double translateValue = (textPainter.width + 100) * _controller.value;

                  return Transform.translate(
                    offset: Offset(
                      -translateValue,
                      0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          widget.title,
                          style: widget.textStyle,
                        ),
                        const SizedBox(width: 75),
                        Text(
                          widget.title,
                          style: widget.textStyle,
                        ),
                        const SizedBox(width: 100),
                      ],
                    ),
                  );
                },
              ),
            )
          : Row(
              children: [
                Text(
                  widget.title,
                  style: widget.textStyle,
                ),
              ],
            ),
    );
  }
}