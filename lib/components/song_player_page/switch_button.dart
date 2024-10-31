import 'package:flutter/material.dart';

class CustomSwitchAppBar extends StatefulWidget {
  final String option1;
  final String option2;
  final ValueChanged<bool> onChanged;

  const CustomSwitchAppBar({
    super.key,
    required this.option1,
    required this.option2,
    required this.onChanged,
  });

  @override
  _CustomSwitchAppBarState createState() => _CustomSwitchAppBarState();
}

class _CustomSwitchAppBarState extends State<CustomSwitchAppBar> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34, 
      padding: const EdgeInsets.all(2),  
      decoration: BoxDecoration(
        color: const Color(0xFF282828),
        borderRadius: BorderRadius.circular(25), 
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildToggleButton(widget.option1, !isSelected),
          _buildToggleButton(widget.option2, isSelected),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.onChanged(isSelected);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical:6),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF7a7979) : const Color(0xFF282828),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14, 
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
