import 'package:flutter/material.dart';

import '../constants/constant.dart';

class RawWalletItem extends StatelessWidget {
  const RawWalletItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: height * 0.13,
          width: width * 0.22,
          decoration: BoxDecoration(
              color: kLightGreyColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 27,
                  child: Image.asset("assets/images/donate.png"),
                  backgroundColor: kLightGreen,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Donate",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Container(
          height: height * 0.13,
          width: width * 0.22,
          decoration: BoxDecoration(
              color: kLightGreyColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 27,
                  child: Image.asset("assets/images/cash.png"),
                  backgroundColor: kLightGreen,
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "Cash",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Container(
          height: height * 0.13,
          width: width * 0.22,
          decoration: BoxDecoration(
              color: kLightGreyColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 27,
                  child: Image.asset("assets/images/gas.png"),
                  backgroundColor: kLightGreen,
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "Gas",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
