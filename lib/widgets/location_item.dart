import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';

class LocationItem extends StatelessWidget {
  const LocationItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height * 0.35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 1, offset: Offset(0, 5), color: Colors.grey),
            BoxShadow(blurRadius: 1, offset: Offset(5, 0), color: Colors.grey),
          ]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: 0,
              bottom: 220,
              child: Container(
                width: 350,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: kPrimaryColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 90, top: 10),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "RVM Model-201",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.check,
                            color: kPrimaryColor,
                            size: 20,
                          ),
                        ),
                        Text(
                          "  Online",
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                ),
              )),
          Positioned(
            top: -20,
            left: 30,
            child: Image.asset("assets/images/mall.png"),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mall of Egypt 6th of October City",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "Access",
                      style:
                          TextStyle(color: kGrey, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Free Parking",
                      style:
                          TextStyle(color: kGrey, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/user.png"),
                    const Text(
                      "Public",
                      style: TextStyle(
                          color: kLightOrange, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Image.asset("assets/images/car.png"),
                    Text(
                      "30-min",
                      style: TextStyle(
                          color: kLightOrange, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Operating Hours ",
                  style: TextStyle(color: kGrey, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/clock.png"),
                    Text(
                      "10:00am-12:00pm",
                      style: TextStyle(
                          color: kLightOrange, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 2,
                  width: width * 0.8,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),

                //row
                Row(
                  children: [
                    Image.asset("assets/images/heart.png"),
                    Image.asset("assets/images/share.png"),
                    Image.asset("assets/images/road_sign.png"),
                    SizedBox(
                      width: 130,
                    ),
                    Text("See details"),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset("assets/images/more.png")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
