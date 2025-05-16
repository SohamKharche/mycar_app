import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velociracers2_app/components.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6616),
        title: Text("Car Information"),
        titleTextStyle:
            GoogleFonts.orbitron(color: Colors.white, fontSize: 20.0),
      ),
      body: ListView(
        children: [
          DisplayInfo("Distance travelled:", "0.00"),
          SizedBox(
            height: 15.0,
          ),
          DisplayInfo("Range:", "0.00"),
        ],
      ),
    );
  }
}
