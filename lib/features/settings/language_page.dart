import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class LanguagePage extends StatefulWidget {
  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            _buildRow(0, 'English'),
            const Padding(
              padding: const EdgeInsets.only(top: 5,  bottom: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 0.3,
              ),
            ),
            _buildRow(1, 'Vietnamese'),
            const Padding(
              padding: const EdgeInsets.only(top: 5,  bottom: 5),
              child: Divider(
                color: Colors.grey,
                thickness: 0.3,
              ),
            ),
            _buildRow(2, 'French'),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(int value, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Radio(
          value: value,
          groupValue: _selectedValue,
          activeColor: AppColors.blue,
          onChanged: (int? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
