import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/home_page/widgets/gmail_container.dart';
import 'package:zs_airways/features/home_page/widgets/toogle_but.dart';
import 'package:zs_airways/features/payment_details/widgets/footer.dart';
import 'package:zs_airways/features/payment_details/widgets/payment_button.dart';
import '../auth/widgets/arrow.dart';
import 'widgets/baggage_bottom_sheet.dart';
import 'widgets/travel_assurance.dart';

class BookingDetail extends StatelessWidget {
  const BookingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceData=MediaQuery.of(context).textScaler;
    return Scaffold(
      backgroundColor: Colors.white,
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
                const SizedBox(height: 24,),
                Text('Serach Flights',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 20,),
                Text('Contact Details',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                  ),),
                Text('(For E-Ticket/Voucher)',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey
                  ),),
                SizedBox(height: 22,),
                //gmails
                GmailContainer(),
                SizedBox(height: 18,),
                Text('Passenger Info', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 12,),
                //contact details
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Same As Contact Details',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.black
                            ),
                          ),
                          ToogleBut(),
                        ],
                      ),
                      SizedBox(height: 8,),
        
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                //selena
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteNames.passengerInfo);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selena Kayle',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.black
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.grey,
                              size: 12,
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Text('Facility',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                SizedBox(height: 6,),
                //baggage
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context,
                        builder: (BuildContext context){
                          return BaggageBottomSheet();
                        });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Baggage',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.black
                                  ),
                                ),
                                Text(
                                  'Add extra baggage',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.grey
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.add,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Text('Extra Protection',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),),
                SizedBox(height: 8,),
                // insurance
                TravelAssurance(),
                SizedBox(height: 26,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubtotalWidget(),
                    PaymentButton(text: 'Select Seat', onPressed: (){
                      Navigator.pushNamed(context, RouteNames.selectSeats);
                    }, img: 'assets/images/check_circle.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
