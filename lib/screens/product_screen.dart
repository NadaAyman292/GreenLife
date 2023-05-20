import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../widgets/custom_text_form_feild.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
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
          "Product Details",
          style: TextStyle(
              color: kPrimaryColor, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        actions: [Image.asset(notification)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Text(
              "Find out more about the products that you buy",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const CustomTextFormFeild(
              hintText: "Search for Product",
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              padding: EdgeInsets.all(22),
              width: width,
              height: height * 0.8,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 217, 217),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                        width: width * 0.4,
                        height: height * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: kPrimaryColor),
                            borderRadius: BorderRadius.circular(18)),
                        child: Image.asset("assets/images/coca.png")),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.02,
                      ),
                      const CircleAvatar(
                          radius: 12,
                          backgroundColor: kPrimaryColor,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Text(
                        "Recyclable in RVM",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Center(
                    child: Text(
                      "Coca cola Zero Suger",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Bar Code:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Volume:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Recycable:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Material:",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Manufacturer::",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    padding: EdgeInsets.all(14),
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Center(
                      child: Text(
                        "where can I recycle",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
