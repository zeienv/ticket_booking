import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/home_page/widgets/arrow2.dart';
import 'package:zs_airways/features/home_page/widgets/search_card.dart';

import '../auth/widgets/arrow.dart';
class SearchCardFlights extends StatefulWidget {
  SearchCardFlights({super.key});

  @override
  State<SearchCardFlights> createState() => _SearchCardFlightsState();
}

class _SearchCardFlightsState extends State<SearchCardFlights> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading:    Arrow2(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  Text('Search Flights',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 24
          ),),
      ),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchCard(),
                SearchCard(),
                SearchCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}