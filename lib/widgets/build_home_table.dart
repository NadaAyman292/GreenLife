import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';

class BuildHomeTable extends StatelessWidget {
  const BuildHomeTable({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      width: width,
      height: height * 0.2,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/images/coin.png"),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "300",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "POINTS",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.03,
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(
            width: width * 0.03,
          ),

          //**Items */
          Column(
            children: [
              Image.asset("assets/images/target.png"),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "600k",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "ITEMS",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            width: width * 0.03,
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(
            width: width * 0.03,
          ),

          //** recycled */
          Column(
            children: [
              Image.asset("assets/images/recycle2.png"),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "25",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.white),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              const Text(
                "RECYCLED",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
