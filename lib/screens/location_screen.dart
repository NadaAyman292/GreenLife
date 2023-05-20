import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../constants/constant.dart';
import '../widgets/custom_text_form_feild.dart';
import '../widgets/location_item.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Image.asset(
            barImage,
            color: kPrimaryColor,
          ),
        ),
        title: const Text(
          "RVM Locations",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [Image.asset(notification)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Your Nearest RVM",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextFormFeild(
                hintText: "Enter an address",
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/locations2.png"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your Favorite",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const LocationItem();
                },
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 32,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
