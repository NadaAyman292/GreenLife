import 'package:flutter/material.dart';

import '../constants/constant.dart';

class BuildVideoItem extends StatelessWidget {
  const BuildVideoItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.antiAlias,
      children: [
        Image.asset(
          "assets/images/OIP1.jpeg",
          width: width,
          height: 200,
          fit: BoxFit.fill,
        ),
        const Positioned(
          top: 20,
          right: 20,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.favorite_border,
              color: kPrimaryColor,
            ),
          ),
        ),
        Positioned(
            top: 80,
            left: 150,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(
                Icons.play_arrow,
                color: Colors.red,
                size: 30,
              ),
            )),
        Positioned(
            bottom: 0,
            top: 150,
            child: Container(
                padding: EdgeInsets.only(left: 5, right: 20),
                height: height * 0.1,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 229, 225, 225),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How to Use waste bottle as plastic rope",
                      maxLines: 2,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          "2min",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        Spacer(),
                        Icon(Icons.favorite_border),
                        Text("256"),
                        Image.asset("assets/images/share.png")
                      ],
                    ),
                  ],
                )))
      ],
    );
  }
}
