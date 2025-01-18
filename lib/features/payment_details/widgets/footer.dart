import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class SubtotalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Subtotal',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.blue,
              size: 28,
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          '\$132',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}