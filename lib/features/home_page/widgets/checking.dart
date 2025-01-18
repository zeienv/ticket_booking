import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Checking extends StatefulWidget {
  const Checking({super.key});

  @override
  State<Checking> createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {
  String? _option;
  bool? _isSelected;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        _checkOption('On-way', true),
        SizedBox(width: 24,),
        _checkOption('Round-trip', false),

      ],
    );
  }


  Widget _checkOption(String gender, bool isSelected){
    return GestureDetector(
      onTap: (){
        setState(() {
          _option = gender;
          _isSelected = isSelected;
        });
      },


      child: Row(
        children: [
          Icon(
              _option == gender ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected ? Colors.blue : Colors.grey
          ),
          SizedBox(width: 6,),
          Text(gender,
            style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w500,
            ),),
        ],
      ),
    );
  }
}