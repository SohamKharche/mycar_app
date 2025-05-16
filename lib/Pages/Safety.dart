import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velociracers2_app/components.dart';

class SafetyPage extends StatefulWidget {
  const SafetyPage({super.key});

  @override
  State<SafetyPage> createState() => _SafetyPageState();
}

class _SafetyPageState extends State<SafetyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6616),
        title: Text("Safety"),
        titleTextStyle:
            GoogleFonts.orbitron(color: Colors.white, fontSize: 20.0),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 25.0,
          ),
          RoundIndicator(
            imagePath1: "assets/Helmet_not_worn.jpg",
            imagepath2: "assets/Helmet_worn.jpg",
            controlvar: 0,
          ),
          SizedBox(
            height: 25.0,
          ),
          RoundIndicator(
            imagePath1: "assets/seatbelt.jpg",
            imagepath2: "assets/seatbelt.jpg",
            controlvar: 1,
          ),
        ],
      ),
    );
  }
}
