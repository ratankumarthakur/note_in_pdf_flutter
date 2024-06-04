import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:note_in_pdf/constants.dart';

class colorpickertest extends StatefulWidget {
  const colorpickertest({super.key});

  @override
  State<colorpickertest> createState() => _colorpickertestState();
}

class _colorpickertestState extends State<colorpickertest> {

  @override
  Widget build(BuildContext context) {
    return
       ElevatedButton(onPressed: (){
        pickColor(context);
      }, child: Text("choose color")
      );
  }

  Future<void> pickColor(BuildContext context)async{

    return showDialog(
        context: context,
        builder:(BuildContext context){
      return AlertDialog(
        title:Text("pick up a color"),
        content: Column(
          children: [
            buildColorPicker(),
            TextButton(onPressed: (){
             Navigator.of(context).pop();
            }, child: Text("select")
            )
          ],),
        );});
  }

  Widget buildColorPicker (){

    return ColorPicker(pickerColor:constants.bgcolor,
    onColorChanged: (value){
      setState(() {
        constants.bgcolor=value;
      });
    },);
  }
}
