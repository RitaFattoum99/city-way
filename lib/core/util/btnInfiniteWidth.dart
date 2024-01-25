import 'package:city_way/core/resource/color_manger.dart';
import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  String text;
  Function onPressed;
  Color color;
  Btn(
      {required this.text,
      required this.onPressed,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: onPressed(),
        child: Text(
          text,
          style: TextStyle(color: AppColorManger.white),
        ),
      ),
    );
  }
}
