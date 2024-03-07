// In the screen, show 3 asset images of size (width: 150, height: 150).

import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/wallpaperflare.com_wallpaper (2).jpg",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/wallpaperflare.com_wallpaper (3).jpg",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/wallpaperflare.com_wallpaper (4).jpg",
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}