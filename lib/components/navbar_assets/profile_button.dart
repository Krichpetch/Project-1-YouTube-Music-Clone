import 'package:flutter/material.dart';

import '../../components/cover_images/cover_image.dart';

import '../../screens/user_screen.dart';

import '../../models/user.dart';


class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const UserProfileScreen()),
        );
      },
        child: ClipOval(
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const CoverImage(
                imageName: userProfileImage, borderRadius: 5.0),
          ),
        ),
      ),
    );
  }
}
