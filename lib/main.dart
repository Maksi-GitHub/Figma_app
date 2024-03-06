import 'package:flutter/material.dart';
import 'package:flutter_app_figma/pages/signup_pages.dart';

void main(){
  runApp(const FigmaApp());
}

class FigmaApp extends StatelessWidget {
  const FigmaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}