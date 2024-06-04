import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:note_in_pdf/constants.dart';
import 'package:note_in_pdf/modifiedtext.dart';
import 'package:note_in_pdf/modifiedtext2.dart';
import 'package:note_in_pdf/printable.dart';
import 'package:note_in_pdf/savebtn.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

class pg1 extends StatefulWidget {
   pg1({super.key});

  @override
  State<pg1> createState() => _pg1State();
}

class _pg1State extends State<pg1> {

  var texts=TextEditingController();
  static var title= TextEditingController();
  static var tex = TextEditingController();
  static var s1="";
  static var s2="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.bgcolor,
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11)
                ),
                  child: TextField(
                    controller: title,
                    decoration:const InputDecoration(
                        hintText: "title enter"
                    ) ,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                  ),
                    child: TextField(
                      controller: tex,
                      maxLines: null,
                      decoration:InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(
                                  color: Colors.green
                              )
                          ),
                          hintText: "Enter text"
                      ) ,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(onTap: (){
                  setState(() {
                    s1=title.text;
                    s2=tex.text;
                  });
                },
                  child: Container(height: 50,width: 150,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue
                  ),
                      child: Center(child: Text("Save as pdf"))
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child:Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings,size: 50,color: Colors.grey,),
                SizedBox(height: 10,),
                Text("Tools",style: TextStyle(color: Colors.grey),)
              ],
            ) ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(height: 50,
                child: ElevatedButton(onPressed: (){
                  pickColor(context);
                }, child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("choose background color"),
                    SizedBox(width: 5,),
                    Icon(Icons.color_lens_outlined,)
                  ],
                )
                ),
              ),
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(height: 50,
                child: ElevatedButton(onPressed: (){
                  pickColor2(context);
                }, child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("choose title color"),
                    SizedBox(width: 5,),
                    Icon(Icons.color_lens_outlined,)
                  ],
                )
                ),
              ),
            ),SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(height: 50,
                child: ElevatedButton(onPressed: (){
                  pickColor3(context);
                }, child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("choose text color"),
                    SizedBox(width: 5,),
                    Icon(Icons.color_lens_outlined,)
                  ],
                )
                ),
              ),
            ),
            SaveBtnBuilder(t:s1,te: s2,),
          ],
        ),
      ),
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

  Future<void> pickColor2(BuildContext context)async{
    return showDialog(
        context: context,
        builder:(BuildContext context){
          return AlertDialog(
            title:Text("pick up a color"),
            content: Column(
              children: [
                buildColorPicker2(),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("select")
                )
              ],),
          );});
  }

  Widget buildColorPicker2(){
    return ColorPicker(pickerColor:constants.titlecolor,
      onColorChanged: (value){
        setState(() {
          constants.titlecolor=value;
        });
      },);
  }

  Future<void> pickColor3(BuildContext context)async{
    return showDialog(
        context: context,
        builder:(BuildContext context){
          return AlertDialog(
            title:Text("pick up a color"),
            content: Column(
              children: [
                buildColorPicker3(),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("select")
                )
              ],),
          );});
  }

  Widget buildColorPicker3 (){
    return ColorPicker(pickerColor:constants.textcolor,
      onColorChanged: (value){
        setState(() {
          constants.textcolor=value;
        });
      },);
  }



}
