import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';

class BuildHomeContainer extends StatelessWidget {
  const BuildHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "You have contributed",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "25",
              style: TextStyle(
                  color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "items to our yearly",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            Text(
              "goal so far,way to go!",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset("assets/images/arrow_circle_right.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+ 3%",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                )
              ],
            )
          ]),
          width: width * 0.22,
          height: height * 0.25,
          decoration: BoxDecoration(
              color: klightgreen2, borderRadius: BorderRadius.circular(17)),
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Container(
          padding: EdgeInsets.all(14),
          width: width * 0.22,
          height: height * 0.25,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(17),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "By recycling you have prevented",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "600g",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Waste from going into landifills",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset("assets/images/arrow_circle_right.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+ 15%",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            )
          ]),
        ),
      ],
    );
  }
}
