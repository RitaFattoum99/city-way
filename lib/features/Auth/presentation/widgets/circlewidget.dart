import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(top: size.height*0.1,
    child: Image.asset("assets/image/auth/Ellipse 1.png"),
    );
  }
}