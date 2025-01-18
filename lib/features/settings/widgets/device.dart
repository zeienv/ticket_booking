import 'package:flutter/material.dart';

class Device extends StatefulWidget {
  const Device({super.key});

  @override
  State<Device> createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  bool _isDoubleVerificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Device',
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
                "Set Device as Trusted",
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
                  activeColor: Colors.blue,
                ),
              ),
            ],
          ),
          Text("Activate to set a Pin and Manage device connectivity.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),)
        ],
      ),
    );
  }
}
