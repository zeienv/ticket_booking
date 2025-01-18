// import 'package:flutter/material.dart';
// import 'package:zs_airways/core/constants/colors.dart';
// import 'package:zs_airways/features/payment_details/widgets/b_sheet_button.dart';
//
// void showBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//     ),
//     builder: (BuildContext context) {
//       return Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SizedBox(
//           height: 380,
//           width: double.infinity,
//           child: Column(
//             children: [
//               Text(
//                 "Continue with Touch ID to \n Proceed the payment",
//                 style: TextStyle(
//                   color: AppColors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Image.asset("assets/images/hand.png"),
//               SizedBox(height: 40),
//               BottomButton(
//                 text: "Use Passcode Instead",
//                 onPressed: () {
//                   showBottomSheet2(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
//
// void showBottomSheet2(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//     ),
//     builder: (BuildContext context) {
//       return Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SizedBox(
//           height: 380,
//           width: double.infinity,
//           child: Column(
//             children: [
//               Text(
//                 "Continue with Touch ID to \n Proceed the payment",
//                 style: TextStyle(
//                   color: AppColors.black,
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Image.asset("assets/images/face.png"),
//               SizedBox(height: 40),
//               BottomButton(
//                 text: "Use Passcode Instead",
//                 onPressed: () {
//                   showBottomSheet(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
