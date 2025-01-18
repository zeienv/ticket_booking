import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/home_page/widgets/male_female.dart';


import '../auth/widgets/arrow.dart';
import '../transactions/widgets/red_button.dart';


class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.all(14),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Arrow(
              onPressed: () {
              Navigator.pop(context);
              },
          
              ),
              SizedBox(height: 20,),
              Text('Contact Person Details',
              style: TextStyle(
              fontSize: 20,
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(height: 18,),
              Row(
              children: [
              MaleFemaleSelection(),
              ],
              ),
              SizedBox(height: 14,),
              Container(
              padding: EdgeInsets.all(10),
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
              child: TextField(
              decoration: InputDecoration(
              labelText: 'Full Name',
              border:   InputBorder.none,
              ),
              ),
              ),
              SizedBox(height: 16,),
              Container(
              padding: EdgeInsets.all(10),
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
              child: TextField(
              decoration: InputDecoration(
              labelText: 'Email Address',
              border:   InputBorder.none,
              ),
              ),
              ),
              SizedBox(height: 16,),
              //country code
              Container(
              padding: EdgeInsets.all(10),
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
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
              children: [
              Text('Country code',style: TextStyle(
              fontSize: 12,
              color: AppColors.grey
              ),),
              SizedBox(height: 6,),
              Row(
              children: [
              Image.asset('assets/images/flag.png'),
              SizedBox(width: 4,),
              Text('(+44)',style: TextStyle(
              fontSize: 16,
          color: AppColors.black
              ),),
              ],
              )
              ],
              ),
                Icon(Icons.keyboard_arrow_down,
          color: AppColors.blue,),
              ],
              ),
              ),
                SizedBox(height: 16,),
                Container(
          padding: EdgeInsets.all(10),
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
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Phone number',
              border:   InputBorder.none,
            ),
          ),
                ),
                SizedBox(height: 16,),
                Container(
          padding: EdgeInsets.all(10),
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
          child: TextField(
            decoration: InputDecoration(
              labelText: 'ID card number',
              border:   InputBorder.none,
            ),
          ),
                ),
                SizedBox(height: 8,),
                Text('This contact is for e-ticket and refund/rescheduling',
          style: TextStyle(fontSize: 12,
              color: AppColors.grey),),
                SizedBox(height: 18,),

                AppButtonWidgets.longButton(
                      () {
                    Navigator.pushNamed(context, RouteNames.passengerInfo);
                  },
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Save changes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 8), // Adds spacing between Text and Icon
                    ],
                  ),
                ),
              ],
              ),
          ),
          ),
        ),
    );
  }
}