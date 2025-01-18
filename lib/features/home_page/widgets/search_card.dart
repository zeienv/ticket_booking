import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';

class SearchCard extends StatelessWidget {
  SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    return CouponCard(
        height: 280,
        curvePosition: 200,
        // curveRadius: 30,
      curveAxis: Axis.horizontal,
        borderRadius: 30,
        firstChild:
        TicketWidget(
        width: screenWidth*0.85,
        height: 220,
        isCornerRounded: true,
        child: GestureDetector(
        onTap: (){
      Navigator.pushNamed(context, RouteNames.bookingDetail);
    },
    child:
    Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    // country
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    children: [
    Text('LGA',
    style: TextStyle(
    fontSize: 24,
    ),),
    SizedBox(height: 2,),
    Text('New York',
    style: TextStyle(
    fontSize: 12,
    color: AppColors.grey
    ),),
    ],
    ),
    Column(
    children: [
    Image.asset("assets/images/trip.png"),
    SizedBox(height: 2,),
    Text('23:00 hours',
    style: TextStyle(
    fontSize: 12,
    color: AppColors.black
    ),),
    ]
    ),
    Column(
    children: [
    Text('DAD',
    style: TextStyle(
    fontSize: 24,
    ),),
    SizedBox(height: 2,),
    Text('Da Nang',
    style: TextStyle(
    fontSize: 12,
    color: AppColors.grey
    ),),
    ],
    ),
    ],
    ),
    //  time
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    children: [
    Text('8:00 AM',
    style: TextStyle(
    fontSize: 24,
    ),),
    SizedBox(height: 2,),
    Text('August 28,2021',
    style: TextStyle(
    fontSize: 12,
    color: AppColors.grey
    ),),
    ],
    ),
    SizedBox(width: 105,),
    Column(
    children: [
    Text('7:00 AM',
    style: TextStyle(
    fontSize: 24,
    ),),
      SizedBox(height: 2,),
      Text('August 28, 2021',
        style: TextStyle(
            fontSize: 12,
            color: AppColors.grey
        ),),
    ],
    ),
    ],
    ),
      Divider(),
      // qatar
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/qatar.png', color: Colors.black,),
          Text(
            'Qatar Airway',
            style: TextStyle(
                fontSize: 14,
                color: AppColors.grey
            ),
          ),
          // SizedBox(
          //   width: 95,
          // ),
          Text(
            '\$ 340',
            style: TextStyle(fontSize: 16,
                color: AppColors.black),
          ),
        ],
      ),
    ],
    ),
    ),
        ),), secondChild: Container(),
    );
  }
}