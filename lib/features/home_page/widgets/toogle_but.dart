import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../../../core/constants/colors.dart';

class ToogleBut extends StatefulWidget {
  const ToogleBut({super.key});

  @override
  State<ToogleBut> createState() => _ToogleButState();
}

class _ToogleButState extends State<ToogleBut> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 16,
      child: FittedBox(
        fit: BoxFit.fill,
        child: LiteRollingSwitch(
          value: false,
          colorOn: AppColors.blue,
          colorOff: AppColors.grey,
          iconOn: Icons.circle,
          iconOff: Icons.circle,
          textOn: "",
          textSize: 0,
          onTap: (){}, onDoubleTap: (){},onSwipe: (){},
          onChanged: (bool state) { },
        ),
      ),
    );
  }
}