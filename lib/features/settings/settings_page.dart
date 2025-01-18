import 'package:flutter/material.dart';
import 'package:zs_airways/core/constants/colors.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/settings/widgets/setting_rows.dart';

import '../auth/widgets/arrow.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Arrow(
        onPressed: () {
          Navigator.pop(context);
        },
      )),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
            "Settings",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "General",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteNames.languagePage);
            },
              child:
                  SettingRows(text: "Language", icon: Icons.arrow_forward_ios)),
         const Padding(
            padding: const EdgeInsets.only(top: 10,  bottom: 10),
            child: Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, RouteNames.notificationPage);
            },
            child: SettingRows(
                text: "Notification Settings", icon: Icons.arrow_forward_ios),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 10,  bottom: 10),
            child: Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
          ),
              SettingRows(
                  text: "Location", icon: Icons.alarm_on),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Account & Secrity",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.emailandmobilePage);
                },
                child: SettingRows(
                    text: "Email and Mobile Number", icon: Icons.arrow_forward_ios),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.securitysetting);
                },
                child: SettingRows(
                    text: "Security Settings", icon: Icons.arrow_forward_ios),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RouteNames.deleteAccount);
                },
                child: SettingRows(
                    text: "Delete Account", icon: Icons.arrow_forward_ios),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              Text(
                "Other",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SettingRows(
                  text: "About Indochina Travel App", icon: Icons.arrow_forward_ios),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              SettingRows(
                  text: "Privacy Policy", icon: Icons.arrow_forward_ios),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
              SettingRows(
                  text: "Terms and Conditions", icon: Icons.arrow_forward_ios),
              const Padding(
                padding: const EdgeInsets.only(top: 10,  bottom: 10),
                child: Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
              ),
             const  Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Text("Race App",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xE5252831),
                  ),),
               Text("v4.87.2",
                 style: const TextStyle(
                   fontSize: 17,
                   fontWeight: FontWeight.w400,
                   color: Color(0xE5252831),
                 ),),

              ],)
        ]),
      ),

    );
  }
}
