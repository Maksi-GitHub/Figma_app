import 'package:flutter/material.dart';
import 'package:flutter_app_figma/design/color.dart';
import 'package:flutter_app_figma/design/icons.dart';
import 'package:flutter_app_figma/design/your_cards.dart';
import 'package:google_fonts/google_fonts.dart';

class YourCard extends StatefulWidget {
  const YourCard({super.key});

  @override
  State<YourCard> createState() => _YourCardState();
}

class _YourCardState extends State<YourCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'Your Card',
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: textColor,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: menuIcon,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Image(image: AssetImage(yourCard[0]['card'])),
          Positioned(
            top: 35,
            left: 40,
            child: Text(
              yourCard[0]['nameCard'],
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: textColor2,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 100,
            child: Text(
              yourCard[0]['numberCard'],
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 20,
                    color: textColor2,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 50,
            child: Column(
              children: [
                Text('CARD HOLDER', style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 8,
                        color: textColor2,
                        fontWeight: FontWeight.w400))),
                Text(
                  yourCard[0]['nameUser'],
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 10,
                        color: textColor2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            right: 60,
            child: Column(
              children: [
                Text('EXPIRED', style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 8,
                        color: textColor2,
                        fontWeight: FontWeight.w400))),
                Text(
                  yourCard[0]['dateCard'],
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 10,
                        color: textColor2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
