import 'package:flutter/material.dart';

class SmallContainer extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;
  final VoidCallback? onTap;

  const SmallContainer({
    super.key,
    required this.text,
    required this.color1,
    required this.color2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 163,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xfff004B40),
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'TheYear',
            ),
          ),
        ),
      ),
    );
  }
}
