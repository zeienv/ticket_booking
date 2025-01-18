import 'package:flutter/material.dart';
import 'package:zs_airways/account_page/widgets/acc_containers.dart';
import 'package:zs_airways/account_page/widgets/profile_circle.dart';
import 'package:zs_airways/core/constants/colors.dart';

import '../../core/route/route_names.dart';
import '../features/home_page/widgets/toogle_but.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(children: [
        
            ProfileCircle(),
            // body
            Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                // 4 containers
                AccContainers(
                  imgUrl: 'assets/images/tg.png',
                  text: 'My Order',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                AccContainers(
                  imgUrl: 'assets/images/Group 3.png',
                  text: 'My Voucher',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                AccContainers(
                  imgUrl: 'assets/images/credit_card.png',
                  text: 'Payment Methods',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                AccContainers(
                  imgUrl: 'assets/images/Shape.png',
                  text: 'Invite Friends',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                ),
                SizedBox(
                  height: 8,
                ),
        
                // quick login
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.01),
                        spreadRadius: 5,
                      ),
                    ],
                  ),
        
                  // log in
                  child: Container(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('assets/images/scaner_icon.png'),
                          SizedBox(width: 8),
                          Text(
                            'Quick Login',
                            style: TextStyle(fontSize: 16, color: AppColors.black),
                          )
                        ]),
                        ToogleBut(),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
        
                //order
                AccContainers(
                  imgUrl: 'assets/images/Navigation.png',
                  text: 'My Order',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                ),
                SizedBox(
                  height: 4,
                ),
                AccContainers(
                  imgUrl: 'assets/images/settings.png',
                  text: 'Settings',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.settingsPage);
                  },
                ),

                SizedBox(
                  height: 22,
                ),
                AccContainers(
                  imgUrl: 'assets/images/logout.png',
                  text: 'Log Out',
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.selectSeats);
                  },
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
