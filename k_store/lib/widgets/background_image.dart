import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      // ShaderMask Widget allow us to use gradient
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,

        // Add createShader and set it to bonds
      ).createShader(bounds),
      blendMode: (BlendMode.darken),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/cool-background.png'),
            // Make Image Appear Full Screen
            fit: BoxFit.cover,
            // To Make Image Darker
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
