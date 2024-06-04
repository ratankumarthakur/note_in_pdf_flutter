import 'package:flutter/material.dart';

class modifiedtext2 extends StatelessWidget {

  final String text;
  final Color color;
  final double size;

  modifiedtext2({super.key,required this.text,this.color=Colors.black,this.size=15,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(fontSize: size,color: color),
    );
  }
}
