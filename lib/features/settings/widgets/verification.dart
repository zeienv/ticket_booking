import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String _selectedOption = 'Double Verification';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Credit Card',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16),
          _buildOption(
            title: 'Double Verification',
            subtitle:
            'Enter CVV & OTP code for more secure payment verification.',
            value: 'Double Verification',
          ),
          Divider(),
          _buildOption(
            title: 'Single Verification',
            subtitle:
            'Enter CVV & OTP code for a swift & hassle-free payment verification.',
            value: 'Single Verification',
          ),
        ],
      ),
    );
  }

  Widget _buildOption({required String title, required String subtitle, required String value}) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedOption = value;
        });
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Radio<String>(
            value: value,
            groupValue: _selectedOption,
            activeColor: AppColors.blue,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}