import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';


class ConfirmPinBottom extends StatelessWidget {
  ConfirmPinBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                'Verify Your Email',
                style: TextStyle(
                    fontSize: 24,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Input the OTP code sent to:',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'j*******ia@gmail.com',
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 28,
              ),
              Image.asset(
                'assets/images/Frame 238.png',
                color: AppColors.grey,
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                child: Text(
                  'Send a new OTP code (58s)',
                ),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.deleteAccount);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
