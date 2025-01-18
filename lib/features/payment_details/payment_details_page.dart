import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/features/auth/widgets/arrow.dart';
import 'package:zs_airways/features/payment_details/widgets/b_sheet_button.dart';
import 'package:zs_airways/features/payment_details/widgets/footer.dart';
import 'package:zs_airways/features/payment_details/widgets/method.dart';
import 'package:zs_airways/features/payment_details/widgets/pay_check.dart';
import 'package:zs_airways/features/payment_details/widgets/payment_button.dart';

import '../../core/route/route_names.dart';


class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Arrow(onPressed: (){
          Navigator.pop(context);
        }, )
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Digital payment method(s)",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Swipe left to set your default method",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(height: 20),
              Checker(
                text1: "***8976",
                text2: "Get 10\$ Discount",
                imgurl: "assets/images/card.png",
                icon1: "assets/images/success2.png",
                icon2: "assets/images/check.png",
              ),
              SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              SizedBox(height: 20),
              Checker(
                text1: "Paypal",
                text2: "Get 10\$ Discount",
                imgurl: "assets/images/paypal.png",
                icon1: "assets/images/success2.png",
                icon2: "assets/images/circle.png",
              ),
              SizedBox(height: 30),
              Text(
                "Add methods",
                style: TextStyle(fontSize: 24, color: AppColors.black),
              ),
              SizedBox(height: 20),
              Method(
                text1: "Credit or debit card",
                text2: "Get 10\$ Discount",
                text3: "Visa, Mastercard, AMEX and JCB",
                imgurl: "assets/images/cardd.png",
                icon1: "assets/images/success2.png",
                add: "Add",
              ),
              SizedBox(height: 20),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
              ),
              SizedBox(height: 15),
              Method(
                text1: "Tranfer",
                text2: "Get 10\$ Discount",
                text3: "Transferring via ATM, Internet \n"
                    "Banking & Mobile Banking",
                imgurl: "assets/images/refund.png",
                icon1: "assets/images/success2.png",
                add: "Add",
              ),
              const SizedBox(height: 140),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SubtotalWidget(),
                  PaymentButton(
                    text: "Proceed The Payment",
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    img: "assets/images/check_circle.png",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 380,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Continue with Touch ID to \n Proceed the payment",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset("assets/images/hand.png"),
                SizedBox(height: 40),
                BottomButton(
                  text: "Use Passcode Instead",
                  onPressed: () {
                    showBottomSheet2(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 380,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Continue with Touch ID to \n Proceed the payment",
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset("assets/images/face.png"),
                SizedBox(height: 40),
                BottomButton(
                  text: "Use Passcode Instead",
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.passcode);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }}



