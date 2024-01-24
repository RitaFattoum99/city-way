import 'package:city_way/core/resource/color_manger.dart';
import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  String text;
  Function onPressed;
   Btn({required this.text, required this.onPressed,super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container( 
      width: size.width,
      child: ElevatedButton(
        onPressed: onPressed(),
        child: Text(
          text
        ),
        ),
        color: AppColorManger.mainAppColor,
    );
  }
}
