import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/intro_page/widgets/button.dart';
import 'package:zs_airways/features/intro_page/widgets/dots.dart';
import 'package:zs_airways/features/intro_page/widgets/skip_button.dart';

import '../../core/route/route_names.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/intro2.png",
                height: 450,

              ),
              const SizedBox(height: 24),
              const Text(
                "Find \n"
               "Your Perfect \n"
                "Tickets To Fly",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),

              ),


              const SizedBox(height: 24),
              StaticDots(),
              const SizedBox(height: 54),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SkipButton(text: "Skip", onPressed: (){}),

                  IntroButton(text: "Next", onPressed: (){
                    Navigator.pushNamed(context, RouteNames.introPage3);
                  }, img: "assets/images/arrow_circle_right.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
