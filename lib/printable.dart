
import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

buildPrintableData(s1,s2,s3,s4,s5) => pw.Container(

color: PdfColors.white,
child: pw.Padding(
padding: pw.EdgeInsets.all(25),
child:pw.Column(
children: [
pw.Center(
child: pw.Text(s1,style: pw.TextStyle(color: PdfColors.red,fontSize: 20,fontWeight: pw.FontWeight.bold)),
),
pw.SizedBox(height: 10),
pw.Divider(),
pw.SizedBox(height: 10),
pw.Text(s2,style: pw.TextStyle(color: PdfColors.green))
]
)
)
);