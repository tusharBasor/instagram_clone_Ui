import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/my_account.dart';

class SplashScr extends StatefulWidget{
  @override
  State<SplashScr> createState() => _SplashScrState();
}

class _SplashScrState extends State<SplashScr> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement((context), MaterialPageRoute(builder: (context) => MyAccount()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            /// TOP EMPTY SPACE
            Expanded(
              child: Container(),
            ),

            /// CENTER LOGO
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/icons/splash_icon.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            /// BOTTOM BRANDING
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Instagram clone', style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 50,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}