import 'package:flutter/material.dart';
import 'package:note_in_pdf/pdftest.dart';

class drawertest extends StatefulWidget {
  const drawertest({super.key});

  @override
  State<drawertest> createState() => _drawertestState();
}

class _drawertestState extends State<drawertest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Builder(
            builder: (context)=>ElevatedButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },child: Text("PRESS"),
            ),
          ),
          SizedBox(height: 40,),
          Text("ratan KUMAR"),
          SizedBox(height: 30,),
          Image.network("https://drive.google.com/uc?=export&id=1rb0BpFhiVYZtG6Xw5C7VC1HTAGG5N-ip",)
          //https://drive.google.com/file/d/1rb0BpFhiVYZtG6Xw5C7VC1HTAGG5N-ip/view?usp=sharing
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child:Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings,size: 50,color: Colors.grey,),
                SizedBox(height: 10,),
                Text("Tools",style: TextStyle(color: Colors.grey),)
              ],
            ) ),

          ],
        ),
      ),
    );
  }
}
