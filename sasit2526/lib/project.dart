import 'package:flutter/material.dart';
import 'package:sasit2526/container.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 300,
              child: PageView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/banner-15.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/banner-16.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/banner-17.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                komponen1(logo: 'assets/jus-jeruk.png', text: 'minuman'),
                const SizedBox(width: 20),
                komponen1(logo: 'assets/pizza.png', text: 'promo terus'),
                const SizedBox(width: 20),
                komponen1(logo: 'assets/burger.jpg', text: 'fast food'),
                const SizedBox(width: 20),
                komponen1(logo: 'assets/apel.png', text: 'Buah & Sayur'),
                const SizedBox(width: 20),
                komponen1(logo: 'assets/buah-sayur.png', text: 'Buah & Sayur'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
