import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()=>Navigator.of(context).pushReplacementNamed('/login'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double avatarheight = MediaQuery.of(context).size.height*0.50;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
              child: SvgPicture.asset('assets/images/Vector.svg')
          ),
          SizedBox(height: 50,),
          Image.asset('assets/images/traveller.jpg',height: avatarheight,),
      ],),
    );
  }
}
