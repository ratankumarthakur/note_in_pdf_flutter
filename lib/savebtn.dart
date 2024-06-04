import 'package:flutter/material.dart';
import 'package:note_in_pdf/constants.dart';
import 'package:note_in_pdf/printable.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class SaveBtnBuilder extends StatelessWidget {

  var t="";
  var te="";

  SaveBtnBuilder({Key? key,required this.t , required this.te}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(height: 50,
        child: ElevatedButton(
          onPressed: () => printDoc(),
          child:  const Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Save as PDF",),
              SizedBox(width: 5,),
              Icon(Icons.color_lens_outlined,)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> printDoc() async {
    // final image = await imageFromAssetBundle(
    // "assets/img_1.png",
    //  );
    final doc = pw.Document();
    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return buildPrintableData(t,te,constants.bgcolor,constants.titlecolor,constants.textcolor);
        }));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}