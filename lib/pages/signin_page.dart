import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_figma/design/color.dart';
import 'package:flutter_app_figma/design/icons.dart';
import 'package:flutter_app_figma/pages/signup_page.dart';
import 'package:flutter_app_figma/pages/your_card_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/icons/background.png'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Container(
            height: 534,
            width: 331,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: containerSignUpIn),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: textColor2,
                              fontSize: 28,
                              fontWeight: FontWeight.w600)),
                    )),
                Container(
                  margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Login to your account',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      color: textColor2,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 256,
                  child: TextField(
                    cursorColor: primaryColor,
                    style:
                        const TextStyle(color: textColor2, fontSize: 15),
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child: emailIcon,
                      ),
                      labelText: 'Email or phone number',
                      labelStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: textColor2,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 256,
                  child: TextField(
                    cursorColor: primaryColor,
                    style:
                        const TextStyle(color: textColor2, fontSize: 15),
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: primaryColor)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(13),
                        child: castleImage,
                      ),
                      labelText: 'Password',
                      labelStyle: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              color: textColor2,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  height: 56,
                  width: 272,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const YourCard()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 15,
                              color: textColor2,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  height: 56,
                  width: 272,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: textColor2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          margin: const EdgeInsets.only(right: 20),
                          child: googleIcon,
                        ),
                        Text(
                          'Login with Google',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Have another account? ',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: textColor2,
                                fontWeight: FontWeight.w400)),
                      ),
                      TextSpan(
                          text: 'Sign Up',
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: sign,
                                  fontWeight: FontWeight.w400)),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpPage()));
                            }),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
