import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constants/constant.dart';

class BuildHomeRecycleCommunity extends StatelessWidget {
  const BuildHomeRecycleCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.3,
      decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.circular(18),
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
          //**circular percent indicator */
          Stack(
            children: [
              CircularPercentIndicator(
                radius: 80,
                lineWidth: 20,
                percent: 0.6,
                progressColor: kPrimaryColor,
                backgroundColor: kLightGreen,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              Positioned(
                top: 50,
                left: 40,
                child: Column(
                  children: [
                    Text(
                      "120k",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Items left ",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Text(
                      " to go",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //** Column */
          SizedBox(
            width: width * 0.04,
          ),

          Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Recycled by Community",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                "100.3k items",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 5),
                width: width * 0.2,
                height: height * 0.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kPrimaryColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Goal for 2023",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: kLightOrange),
                    ),
                    Text(
                      "600k items",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
