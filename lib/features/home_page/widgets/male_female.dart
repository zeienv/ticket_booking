import 'package:flutter/cupertino.dart';
import 'package:zs_airways/core/constants/colors.dart';

class MaleFemaleSelection extends StatefulWidget {
  const MaleFemaleSelection({super.key});

  @override
  State<MaleFemaleSelection> createState() => _MaleFemaleSelectionState();
}

class _MaleFemaleSelectionState extends State<MaleFemaleSelection> {
  String? _gender;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        _genderOption('Male'),
        SizedBox(width: 18,),
        _genderOption('Female'),
      ],
    );
  }


  Widget _genderOption(String gender){
    return GestureDetector(
      onTap: (){
        setState(() {
          _gender = gender;
        });
      },
      child: Row(
        children: [
          Image.asset(
            _gender==gender?'assets/images/check.png':'assets/images/circle.png',
          ),
          SizedBox(width: 6,),
          Text(gender,
            style: TextStyle(fontSize: 14,color: AppColors.black),),
        ],
      ),
    );
  }
}