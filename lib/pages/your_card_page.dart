import 'package:flutter/material.dart';
import 'package:flutter_app_figma/design/color.dart';
import 'package:flutter_app_figma/design/icons.dart';
import 'package:flutter_app_figma/design/your_cards.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class YourCard extends StatefulWidget {
  const YourCard({super.key});

  @override
  State<YourCard> createState() => _YourCardState();
}

class _YourCardState extends State<YourCard> {
final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
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
      body: Column(
        children: [
          SizedBox(
            height: 236,
            width: 419,
            child: PageView(     
              controller: _controller,
              scrollDirection: Axis.horizontal,
                children: List.generate(yourCard.length, (index) {
                  return Center(
                    child: Stack(
                      children: <Widget>[
                        Image(image: AssetImage(yourCard[index]['card'])),
                        Positioned(
                          top: 25,
                          left: 30,
                          child: Text(
                            yourCard[index]['nameCard'],
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 75,
                          child: Text(
                            yourCard[index]['numberCard'],
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          left: 50,
                          child: Column(
                            children: [
                              Text('CARD HOLDER', style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 8,
                                      color: textColor2,
                                      fontWeight: FontWeight.w400))),
                              Text(
                                yourCard[index]['nameUser'],
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
                          top: 180,
                          right: 60,
                          child: Column(
                            children: [
                              Text('EXPIRED', style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 8,
                                      color: textColor2,
                                      fontWeight: FontWeight.w400))),
                              Text(
                                yourCard[index]['dateCard'],
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
                }) 
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: ScaleEffect(
              activeDotColor: primaryColor,
              dotColor: primaryColor.withOpacity(0.3),
              dotHeight: 3
            ),),

            Container(
              )
        ],
      ),
    );
  }
}



