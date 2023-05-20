import 'package:flutter/material.dart';

import '../constants/constant.dart';

class BuildBrandContainer extends StatelessWidget {
  final String image;
  final String text;
  const BuildBrandContainer(
      {super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(10),
      height: height * 0.3,
      width: width * 0.22,
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const Text(
            "Products  recovered and recycled in the last month",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color.fromRGBO(99, 97, 97, 1)),
          )
        ],
      ),
    );
  }
}
