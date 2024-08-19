import 'package:flutter/material.dart';

import 'package:sau_coffee_app_project/views/introduction_screen_ui.dart';




class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // Delay 3 second and open to IntroductionUI page
    Future.delayed(
        Duration(
            //  days: 366,
            seconds: 3
            ),
        // until 3 sec open to next page that you want
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => IntroductionUI(),
              ),
            ));

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/SAUcoffee.png',
              width: MediaQuery.of(context).size.width * 0.65,
            ),
            
            
//Version (opional)
            // Text(
            //   'Version 1.0.0',
            //   style: GoogleFonts.kanit(
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
