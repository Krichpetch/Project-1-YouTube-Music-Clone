import 'package:flutter/material.dart';

import '../components/user_profile_page/profile_menu.dart';
import '../components/cover_images/cover_image.dart';

import '../../constant/constant.dart';

import '../models/user.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      appBar: AppBar(
        backgroundColor: themePrimary,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          borderRadius: BorderRadius.circular(50),
          child: const Icon(
            Icons.close_sharp,
            size: 25,
            color: textSecondary,
          ),
        ),
        title: Text("Account",
            style:
                textTitle.copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
        titleSpacing: 10,
      ),
      body: Column(
        children: [
          SizedBox(
              height: 98,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ClipOval(
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const CoverImage(
                                  imageName: userProfileImage,
                                  borderRadius: 5.0),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: SizedBox(
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    username,
                                    style: textPlaylistTileTitle,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    userEmail,
                                    style: textPlaylistTileTitle,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.chevron_right_sharp,
                          size: 28,
                          color: textSecondary,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text("Manage your Google Account", style: textFilter.copyWith(color: Colors.blue),),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: Color.fromARGB(255, 77, 77, 77),
            thickness: 0.7,
          ),
          SizedBox(
            height: 32,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "YOUTUBE PREMIUM",
                  style:
                      textSubTitle.copyWith(color: textPrimary, fontSize: 15),
                ),
              ],
            ),
          ),
          const Divider(
            color: highlightPrimary,
            thickness: 0.7,
          ),
          const ProfileMenu(
            icon: Icons.account_box_outlined,
            label: "Your Channel",
          ),
          const ProfileMenu(
            icon: Icons.save_alt_sharp,
            label: "Download",
          ),
          const ProfileMenu(
            icon: Icons.history,
            label: "History",
          ),
          const ProfileMenu(
            icon: Icons.fast_rewind_sharp,
            label: "Your Recap",
          ),
          const ProfileMenu(
            icon: Icons.stars_rounded,
            label: "Badges",
          ),
          const ProfileMenu(
            icon: Icons.attach_money_rounded,
            label: "Paid Memberships",
          ),
          const ProfileMenu(
            icon: Icons.switch_account_outlined,
            label: "Switch Accounts",
          ),
          const ProfileMenu(
            icon: Icons.settings_outlined,
            label: "Settings",
          ),
          const ProfileMenu(
            icon: Icons.help_outline,
            label: "Help & Feedbacks",
          ),
        ],
      ),
    );
  }
}
