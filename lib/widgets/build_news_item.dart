import 'package:flutter/material.dart';
import 'package:green_life/constants/constant.dart';

class BuildNewsItem extends StatelessWidget {
  final String image;
  const BuildNewsItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          width: 100,
          child: Image.asset(
            image,
            height: 150,
            width: 200,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "recycling",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const Text(
              "Saving the planet starts \n with recycling",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "feb 22 2023",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  "2 mins ago",
                  style: TextStyle(color: kPrimaryColor, fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              children: [
                Image.asset("assets/images/bookmark.png"),
                SizedBox(
                  width: width * 0.02,
                ),
                Image.asset("assets/images/share.png")
              ],
            )
          ],
        ),
      ],
    );
  }
}
