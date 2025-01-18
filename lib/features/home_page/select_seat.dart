import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/home_page/seat_widgets/seat_info.dart';
import 'package:zs_airways/features/home_page/seat_widgets/seat_places.dart';
import 'package:zs_airways/features/home_page/seat_widgets/slide_book.dart';


import '../auth/widgets/arrow.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  List<List<int>> seatStatus = [
    [1, 0, 1, 3, 1, 1, 1],
    [1, 0, 1, 3, 0, 0, 1],
    [0, 1, 2, 3, 1, 1, 0],
    [1, 0, 0, 3, 1, 0, 1],
    [0, 0, 0, 3, 0, 0, 0],
    [1, 1, 1, 3, 0, 1, 1],
    [0, 1, 1, 3, 0, 1, 0],
    [1, 0, 0, 3, 1, 0, 1],
  ];

  String selectedSeat = "None";

  void onSeatTapped(int row, int col) {
    setState(() {
      for (int i = 0; i < seatStatus.length; i++) {
        for (int j = 0; j < seatStatus[i].length; j++) {
          if (seatStatus[i][j] == 2) {
            seatStatus[i][j] = 1;
          }
        }
      }
      // Select the new seat
      seatStatus[row][col] = 2;
      selectedSeat = "${row + 1}${String.fromCharCode(65 + col)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(15.0),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
   Arrow(onPressed: (){
     Navigator.pop(context);

    }),
    const SizedBox(height: 22,),
    const Text('Passenger Info',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
    ),),
    const SizedBox(height: 20,),
    //passenger info
    Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
    BoxShadow(
    color: Colors.black.withOpacity(0.05),
    spreadRadius: 1,
    ),
    ],
    ),
    //info passenger
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    // new york
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
    Text('Wed, OCT 26 2022',style: TextStyle(
    fontSize: 12,
    color: AppColors.grey,
    ),),
    const SizedBox(height: 4,),
    Text('New York, USA',style: TextStyle(
    fontSize: 12,
    color: AppColors.black,
    ),),
    const SizedBox(height: 4,),
    Text('(LGA)',style: TextStyle(
    fontSize: 12,
    color: AppColors.grey,
    ),),
    ],
    ),
    //photo
    Container(
    width: 62,
    height: 32,
    decoration: BoxDecoration(
    color: AppColors.blue,
    borderRadius: BorderRadius.circular(80),
    boxShadow: [                            BoxShadow(
      color: Colors.black.withOpacity(0.05),
      spreadRadius: 1,
    ),
    ],
    ),
      child:
      Image.asset('assets/images/plane.png',color: AppColors.white,),
    ),
      // danang
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:  [
          Text('9:37 PM',style: TextStyle(
            fontSize: 12,
            color: AppColors.grey,
          ),),
          const SizedBox(height: 4,),
          Text('Danang, VIE',style: TextStyle(
            fontSize: 12,
            color: AppColors.black,
          ),),
          const SizedBox(height: 4,),
          Text('(DAD)',style: TextStyle(
            fontSize: 12,
            color: AppColors.grey,
          ),),
        ],
      ),
    ],
    ),

    ),
      const SizedBox(height: 12,),
      //selection seat
      Container(
        child:  SeatMap(
          seatStatus: seatStatus,
          onSeatTapped: onSeatTapped,
        ),
      ),
      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SelectedSeatInfo(selectedSeat: selectedSeat),
        ),
      ),
      SlideToBookButton(
        isEnabled: selectedSeat != "None",
        onPressed: () {},
      ),
    ],
    ),
    ),
        ),
        ),
    );
  }
}