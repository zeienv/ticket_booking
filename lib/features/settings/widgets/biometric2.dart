import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class Biometric2 extends StatefulWidget {
  const Biometric2({super.key});

  @override
  State<Biometric2> createState() => _Biometric2State();
}

class _Biometric2State extends State<Biometric2> {
  bool _isDoubleVerificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Biometric',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Activate Biometric Feature",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Transform.scale(
                scale: 0.7, // Adjust the scale factor for the Switch size
                child: Switch(
                  value: _isDoubleVerificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isDoubleVerificationEnabled = value;
                    });
                  },
                  activeColor: AppColors.blue,
                ),
              ),
            ],
          ),
          Text("To enjoy a seamless log in with fingerprint or face recognition.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),)
        ],
      ),
    );
  }
}
