import 'package:flutter/material.dart';

class Image_Widget extends StatelessWidget {
  const Image_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/flower.png'),
              width: 300.0,
            ),
            Image(
              image: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/009/667/945/original/rose-flower-bouquet-watercolor-for-valentine-free-png.png',
              ),
              width: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}

// Icon(
//           Icons.photo,
//           color: Colors.amber,
//           size: 100,
//         ),
