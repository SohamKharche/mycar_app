import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Caption;

  const RoundIconButton(
      {required this.icon, required this.onPressed, required this.Caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          child: Icon(icon),
          shape: CircleBorder(),
        ),
        SizedBox(height: 8.0),
        Text(Caption),
      ],
    );
  }
}

class DisplayInfo extends StatefulWidget {
  final title;
  final stats;
  const DisplayInfo(this.title, this.stats, {super.key});

  @override
  State<DisplayInfo> createState() => _DisplayInfoState();
}

class _DisplayInfoState extends State<DisplayInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.orbitron(
                fontSize: 30.0, fontWeight: FontWeight.normal),
          ),
          Text(
            widget.stats,
            style: GoogleFonts.orbitron(fontSize: 40.0),
          )
        ],
      ),
    );
  }
}

class RoundIndicator extends StatefulWidget {
  final imagePath1;
  final imagepath2;
  final controlvar;
  const RoundIndicator(
      {super.key,
      @required this.imagePath1,
      @required this.imagepath2,
      @required this.controlvar});

  @override
  State<RoundIndicator> createState() => _RoundIndicatorState();
}

class _RoundIndicatorState extends State<RoundIndicator> {
  @override
  Widget build(BuildContext context) {
    String currentImgPath =
        widget.controlvar == 0 ? widget.imagePath1 : widget.imagepath2;
    Color backColor = widget.controlvar == 0 ? Colors.red : Colors.tealAccent;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          style: BorderStyle.solid,
          width: 1.0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(150.0),
      ),
      child: CircleAvatar(
        backgroundColor: backColor,
        radius: 150.0,
        child: Container(
          child: Image.asset(
            currentImgPath,
            width: 215.0,
            height: 215.0,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
