import 'package:flutter/material.dart';
import 'package:zs_airways/features/home_page/widgets/arrow2.dart';
import 'package:zs_airways/features/home_page/widgets/checking.dart';
import 'package:zs_airways/features/home_page/widgets/container.dart';
import 'package:zs_airways/features/home_page/widgets/home_button.dart';

import '../../core/constants/colors.dart';
import '../auth/widgets/arrow.dart';
import '../transactions/widgets/bottom2.dart';

class SearchFlight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.blue.shade600,
        body: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bluemap.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue.withOpacity(0.7),
                ),
                SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            GestureDetector(onTap: () {
                              Navigator.pop(context);
                            }, child: Arrow2(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                            const SizedBox(width: 40),
                            const Text(
                              'Search Flights',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          'Discover\na new world',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
                          ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(

                        children: [
                         Checking()
                        ],
                      ),
                      const SizedBox(height: 25,),
                      const Text("From",
                      style: TextStyle(
                        fontSize: 14,
                          fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),),
                      const SizedBox(height: 10,),
                      HomeOption(text: "New York, USA", img: "assets/images/flight_take off.png"),
                       const SizedBox(height: 15,),
                      const Text("To",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                      const SizedBox(height: 5,),
                        HomeOption(text: "Da Nang, Vietnam", img: "assets/images/flight_landing.png"),
                      const SizedBox(height: 15,),
                      const Text("Departure Date",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                      const SizedBox(height: 10,),
                      HomeOption(text: "August 28, 2021", img: "assets/images/calendar.png"),
                      const SizedBox(height: 15,),


                      const Text("Travelers",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                      const SizedBox(height: 5,),
                      HomeOption(text: "1 Adult, 1 child, 0 Infant", img: "assets/images/passenger.png"),
                      const SizedBox(height: 25,),
                      HomeButton(text: "Search flights")
                    ],
                  ),
                ),
                        ))
        ]));
  }
}

