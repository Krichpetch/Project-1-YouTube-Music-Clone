import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/home_screen.dart';
import '../screens/sample_screen.dart';
import '../screens/explore_screen.dart';
import '../screens/library_screen.dart';

import '../constant/constant.dart';

class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          height: 72.0,
          color: themeSecondary, 
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: themeSecondary,
            selectedItemColor: textPrimary,
            unselectedItemColor: textPrimary,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.video_play),
                label: 'Samples',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    const SampleScreen(),
    const ExploreScreen(),
    const LibraryPage()
  ];
}
