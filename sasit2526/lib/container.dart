import 'package:flutter/material.dart';

class komponen1 extends StatelessWidget {
  final String logo;
  final String text;
  const komponen1({super.key, required this.logo, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: BoxBorder.all(color: Colors.tealAccent, width: 2.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            SizedBox(height: 35, child: Image.asset(logo)),
            Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
  }
}