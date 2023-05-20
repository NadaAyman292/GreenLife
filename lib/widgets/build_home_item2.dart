import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';

class BuildHomeItem2 extends StatelessWidget {
  const BuildHomeItem2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.all(14),
        width: width,
        height: height * 0.2,
        decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  blurRadius: 1,
                  offset: Offset(0, 3),
                  color: Colors.grey.shade400),
              BoxShadow(
                  blurRadius: 1,
                  offset: Offset(3, 0),
                  color: Colors.grey.shade400),
            ]),
        child: Row(
          children: [
            Image.asset("assets/images/bottle.png"),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  "See what you can recycle ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore and learn about which product \n packaging is recyclable. ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromRGBO(99, 97, 97, 1)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: width * 0.35,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                      color: klightgreen2,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Which products are recycable? ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
