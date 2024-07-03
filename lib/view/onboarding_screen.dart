import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/plane.jpg'),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromRGBO(88, 62, 242, 0.1)),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(88, 62, 242, 1)),
                        ),
                        Text("What aspect of exploration ",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400)),
                        Text("interests you the most?",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w400))
                      ],
                    )),
              ),
            ],
          ),
          Positioned(
              left: 160,
              bottom: 90,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                   backgroundColor:  Color.fromRGBO(88, 62, 242, 1)
                ),
                  onPressed: () {}, child: Icon(Icons.arrow_forward_rounded ,color: Colors.white,)))
        ],
      ),
    );
  }
}
