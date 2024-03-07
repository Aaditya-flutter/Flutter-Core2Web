// Create a screen in which add 5 network images horizontally with size (width: 150, height: 300) and make scrollable.

import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/free-photo/3d-background-with-hexagonal-shapes-texture_23-2150473195.jpg?size=626&ext=jpg&ga=GA1.1.632798143.1705536000&semt=ais",
                width: 150,
                height: 300,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.network(
                "https://img.freepik.com/premium-photo/3d-rendering-digital-art-illustration-variety-shapes_861655-30.jpg",
                width: 150,
                height: 300,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.network(
                "https://img.freepik.com/premium-photo/3d-image-3d-image-3d-shapes-floating-fluid-freeforms-colourful_379823-10899.jpg",
                width: 150,
                height: 300,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.network(
                "https://static.vecteezy.com/ti/photos-gratuite/t1/14888186-hexagone-en-nid-d-abeille-noir-avec-fond-d-eclairage-au-neon-bleu-brillant-concept-de-science-fiction-et-de-technologie-scientifique-rendu-3d-photo.jpg",
                width: 150,
                height: 300,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.network(
                "https://media.istockphoto.com/id/601944724/photo/low-poly-sphere-with-chaotic-structure.jpg?s=612x612&w=0&k=20&c=ABOQWMmU5YCeBnni3f50Y-GoNWkoo7LmvPldJw-79kk=",
                width: 150,
                height: 300,
              )
            ],
          ),
        ],
      ),
    );
  }
}