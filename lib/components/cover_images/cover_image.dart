import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for rootBundle

class CoverImage extends StatefulWidget {
  final String imageName;
  final double borderRadius;

  const CoverImage({
    required this.imageName,
    required this.borderRadius,
    super.key,
  });

  @override
  _CoverImageState createState() => _CoverImageState();
}

class _CoverImageState extends State<CoverImage> {
  ImageProvider? _cachedImage;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  // Function to generate the full image path
  String _getImagePath(String name, String extension) {
    return 'assets/covers/$name.$extension'; // Generate the path
  }

  // Function to load the image
  Future<void> _loadImage() async {
    try {
      // Try loading .jpg
      await rootBundle.load(_getImagePath(widget.imageName, 'jpg'));
      setState(() {
        _cachedImage = AssetImage(_getImagePath(widget.imageName, 'jpg'));
      });
    } catch (e) {
      // If .jpg fails, try loading .png
      try {
        await rootBundle.load(_getImagePath(widget.imageName, 'png'));
        setState(() {
          _cachedImage = AssetImage(_getImagePath(widget.imageName, 'png'));
        });
      } catch (e) {
        // Handle the error if neither image exists
        setState(() {
          _cachedImage = null; // Set to null if not found
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_cachedImage == null) {
      return const Text('Error loading image');
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          image: DecorationImage(
            image: _cachedImage!,
            fit: BoxFit.cover,
          ),
        ),
        width: 350,
        height: 350,
      );
    }
  }
}
