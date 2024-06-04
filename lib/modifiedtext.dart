import 'package:flutter/material.dart';

class modifiedtext extends StatelessWidget {

  final String text;
  final Color color;
  final double size;

  const modifiedtext({super.key,required this.text,this.color=Colors.black,this.size=25,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(fontSize: size,color: color),
    );
  }
}
