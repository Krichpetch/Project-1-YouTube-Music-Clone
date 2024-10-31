import 'package:flutter/material.dart';
import '../constant/constant.dart';

class BlankScreen extends StatelessWidget {
  final String label;

  const BlankScreen({
    required this.label,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      appBar: AppBar(
        backgroundColor: themePrimary,
        title: Text("In development", style: textTitle,),
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(50),
            child: const Icon(
              Icons.close,
              size: 25,
              color: textSecondary,
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Text(
                label,
                style: textSubTitle,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
