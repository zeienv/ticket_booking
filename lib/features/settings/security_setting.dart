import 'package:flutter/material.dart';
import 'package:zs_airways/core/route/route_names.dart';
import 'package:zs_airways/features/settings/widgets/biometric2.dart';
import 'package:zs_airways/features/settings/widgets/device.dart';
import 'package:zs_airways/features/settings/widgets/pin.dart';
import 'package:zs_airways/features/settings/widgets/verification.dart';

import '../auth/widgets/arrow.dart';

class SecuritySetting extends StatelessWidget {
  const SecuritySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Arrow(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        
          children: [
            const SizedBox(height: 10),


               const Text(
                "Security Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Ensures alignment to the start
                children:  [
                 Verification(),
                  Container(padding: const  EdgeInsets.only(top: 10, bottom: 10,),
                  width: double.infinity,
                  color: Colors.grey[200],),
                Biometric2(),
                  Container(padding: const  EdgeInsets.only(top: 10, bottom: 10,),
                    width: double.infinity,
                    color: Colors.grey[200],),
                  Device(),
                  Container(padding: const  EdgeInsets.only(top: 10, bottom: 10,),
                    width: double.infinity,
                    color: Colors.grey[200],),
                  Pin()
        
        
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
