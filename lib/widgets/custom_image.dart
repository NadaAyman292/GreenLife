import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomImage extends StatelessWidget {
  final String image;
  const CustomImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 250,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
    );
  }
}
