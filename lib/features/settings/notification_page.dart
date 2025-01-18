import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';
import '../../core/route/route_names.dart';
import '../auth/widgets/arrow.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  // Notification toggle states
  final Map<String, bool> notificationStates = {
    "isEmailEnabled1": false,
    "isPushNotificationEnabled1": true,
    "isEmailEnabled2": true,
    "isPushNotificationEnabled2": false,
    "isEmailEnabled3": false,
    "isPushNotificationEnabled3": true,
    "isEmailEnabled4": true,
    "isPushNotificationEnabled4": false,
    "isEmailEnabled5": false,
    "isPushNotificationEnabled5": true,
    "isEmailEnabled6": true,
    "isPushNotificationEnabled6": false,
    "isEmailEnabled7": true,
    "isPushNotificationEnabled7": false,
    "isEmailEnabled8": false,
    "isPushNotificationEnabled8": true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Arrow(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle("Notification Settings"),
              _buildDisN(),
              GestureDetector(onTap: (){Navigator.pushNamed(context, RouteNames.emailandmobilePage);},
                  child:
              _buildSection("Activity", "Secure your account by keeping your log in,\nregister, and OTP activity on track.", 1)),

              _buildSection("Special For You", "You can never have too much of limited-time\ndiscount, exclusive offers, tips and info\nnew feature.", 3),
              _buildSection("Reminders", "Get important travel news and info, payment\nreminders, check-in reminder and more.", 5),
              _buildSection("Membership", "You’ll get emails about ticket Elite Rewards and\nsurveys.", 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    );
  }

  Widget _buildDisN() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        SizedBox(height: 20),
        Text(
          "Push Notification Disabled",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "To enable notifications, go to Settings",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xE5252831),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildSection(String title, String description, int startIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xE5252831),
          ),
        ),
        const SizedBox(height: 15),
        _buildToggle("Email", "isEmailEnabled$startIndex"),
        const SizedBox(height: 10),
        _buildToggle("Push Notification", "isPushNotificationEnabled$startIndex"),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildToggle(String title, String stateKey) {
    return ListTile(
      title: Text(title),
      trailing: Transform.scale(
        scale: 0.6,
        child: Switch(
          value: notificationStates[stateKey] ?? false,
          onChanged: (value) {
            setState(() {
              notificationStates[stateKey] = value;
            });
          },
          activeColor: AppColors.blue,
        ),
      ),
    );
  }
}
