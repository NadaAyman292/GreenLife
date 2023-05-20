import 'package:flutter/material.dart';

import '../constants/constant.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
        left: 10,
      ),
      width: width,
      height: height * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 27,
            child: Image.asset("assets/images/recycle.png"),
            backgroundColor: kLightGreen,
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: const [
                Text(
                  "Coca Cola",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                Text(
                  "330ml",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 12, color: kGrey),
                ),
                Text(
                  "19Aug",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 12, color: kGrey),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Text(
            "+P0.10",
            style: TextStyle(
                color: kLightOrange, fontSize: 18, fontWeight: FontWeight.w800),
          )
        ],
      ),
    );
  }
}
