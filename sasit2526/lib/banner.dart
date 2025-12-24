import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  final String banner;
  const Banner({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage(banner)),
        ),
      ),
    );
  }
}
