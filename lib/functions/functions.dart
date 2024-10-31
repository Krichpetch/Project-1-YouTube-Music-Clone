 String formatCount(int count) {
    if (count >= 1000000000000) {
      return '${(count / 1000000000000).toStringAsFixed(1)}T';
    }
    if (count >= 1000000000) {
      return '${(count / 1000000000).toStringAsFixed(1)}B';
    }
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    }
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }

  String getVideoPath(String name) {
    return 'assets/videos/$name.mp4'; // Generate the path
  }


 void doNothing() {
    // This function intentionally left blank.
  }
