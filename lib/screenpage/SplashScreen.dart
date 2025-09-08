import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page_design/screenpage/login_page.dart';
import 'package:login_page_design/widgets/Screenbackground.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _movetonextscreen();
  }

  Future <void> _movetonextscreen () async {
    await Future.delayed(Duration (seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPage()));
  }


  Widget build(BuildContext context) {
    return Scaffold(
        body :
            Screenbackground(
              child: Center(
                child:
                SvgPicture.asset('assets/images/logo.svg',
                  height: 40,
                  ),

              ),
            )

        );
  }
}
