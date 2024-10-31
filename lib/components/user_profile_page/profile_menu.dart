import 'package:flutter/material.dart';

import '../../constant/constant.dart';


class ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileMenu({
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 39,
        child: Row(children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(icon, size: 26, color: textSecondary,),
          ),
          Text(label, style: textSubTitle.copyWith(color: textPrimary),)
        ],),
      ),
    );
  }
}
