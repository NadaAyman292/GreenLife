import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String? hintText;
  const CustomTextFormFeild({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 2),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: kLightGreen, borderRadius: BorderRadius.circular(35)),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
