import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';

import '../features/auth/widgets/arrow.dart';
import '../features/transactions/widgets/button.dart';



class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Arrow(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 18,),
                Text('Delete Account',
                style: TextStyle(
                  fontSize: 24,
                  color: AppColors.black
                ),),
                SizedBox(height: 18,),
                Center(
                  child: Column(children: [
                    Image.asset('assets/images/delete.png',
                      width: 180,height: 180,),
                  ],),
                ),
                Text('You sure want to '
                    '\ndelete your account?',
                  style: TextStyle(
                  fontSize: 20,
                  color: AppColors.black
                ),),
                SizedBox(height: 22,),
                Text('If you delete your account:',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.black
                  ),),
                SizedBox(height: 5,),
                // remainders
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      // remainders
                      Text( '* Your remaining ticket Points cannot be used \nanymore',
                      style:TextStyle(
                        fontSize: 16,
                        color: AppColors.black
                      )),
                      SizedBox(height: 6,),
                      Text('* Your ticket Elite Rewards benefits will not be \n available anymore.',
                          style:TextStyle(
                              fontSize: 16,
                              color: AppColors.black
                          )),
                      SizedBox(height: 6,),
                      Text('* All your pending rewards will be deleted.:',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.black
                        ),),
                      SizedBox(height: 6,),
                      Text('* All rewards from using credit card can no longer \n be obtained.',
                          style:TextStyle(
                              fontSize: 16,
                              color: AppColors.black
                          )),
                      SizedBox(height: 6,),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 6,),
                    Text('I understand and accept all the above risks \n regarding my acount deletion.',
                    style: TextStyle(
                      fontSize: 13,color: AppColors.grey
                    ),),
                    SizedBox(height: 12,),
          
                  ],
                ),
                SizedBox(height: 16,),
                Button(text: 'Yes, Continue',
                    onPressed: (){
          Navigator.pushNamed(context, RouteNames.introPage1);
                    }),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
