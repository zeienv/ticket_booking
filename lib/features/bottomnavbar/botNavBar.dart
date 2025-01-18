
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/account_page/account.dart';
import 'package:zs_airways/features/home_page/search_flights.dart';
import 'package:zs_airways/features/payment_details/payment_details_page.dart';

import '../../core/constants/colors.dart';
import '../payment_details/payment_details_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  List<Widget> pages = [
    SearchFlight(),
    PaymentDetailsPage(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        currentIndex: _currentIndex,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          bottomNavigationBarWidget(
            icon: Icons.home,
            label: "Home",
          ),
          bottomNavigationBarWidget(
            icon: Icons.confirmation_number,

            label: "Transactions",
          ),
          bottomNavigationBarWidget(
            icon: Icons.person,
            label: "Account",
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarWidget({
  required IconData icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    backgroundColor: AppColors.white,
    label: label,
    icon: Icon(
      icon,
      size: 30, // Adjust size as needed
    ),
  );
}
