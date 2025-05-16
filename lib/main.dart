import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velociracers2_app/Pages/Information.dart';
import 'package:velociracers2_app/Pages/Location.dart';
import 'package:velociracers2_app/Pages/Safety.dart';
import 'package:velociracers2_app/components.dart';

void main() {
  runApp(MaterialApp(
    title: "route",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Color(0xffff6616),
          title: Center(
            child: Text(
              "My Car",
              style: GoogleFonts.orbitron(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
                height: height / 2,
                child: Image(image: AssetImage("porscheimg1.png"))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundIconButton(
                  icon: Icons.location_on,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LocationPage()));
                  },
                  Caption: "Location",
                ),
                RoundIconButton(
                  icon: Icons.phone,
                  onPressed: () {
                    print("Button pressed");
                  },
                  Caption: "Contact",
                ),
                RoundIconButton(
                  icon: Icons.info_outline,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InformationPage()));
                  },
                  Caption: "Info",
                ),
                RoundIconButton(
                  icon: Icons.safety_check,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SafetyPage()));
                  },
                  Caption: "Safety",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
