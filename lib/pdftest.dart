import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class pdftest extends StatefulWidget {
  const pdftest({super.key});

  @override
  State<pdftest> createState() => _pdftestState();
}

class _pdftestState extends State<pdftest> {
  @override
  Widget build(BuildContext context) {
    return PDF(defaultPage: 0).fromAsset("assets/er.pdf");

  }
}
