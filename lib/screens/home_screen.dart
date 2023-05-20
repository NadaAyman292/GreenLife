import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../widgets/build_brand_container.dart';
import '../widgets/build_home_container.dart';
import '../widgets/build_home_item2.dart';
import '../widgets/build_home_recycle.dart';
import '../widgets/build_home_table.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 40),
          child: Row(
            children: [
              Image.asset(
                "assets/images/profile_user.png",
                width: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Hi,",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        "Lara",
                        style: TextStyle(color: kPrimaryColor, fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Cairo,",
                        style: TextStyle(color: kLightOrange, fontSize: 14),
                      ),
                      Text(
                        "Egypt",
                        style: TextStyle(color: kGrey, fontSize: 14),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        actions: [Image.asset(notification)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BuildHomeTable(),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "My States",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const BuildHomeRecycleCommunity(),
              SizedBox(
                height: height * 0.03,
              ),
              //**two container */
              const BuildHomeContainer(),
              SizedBox(
                height: height * 0.04,
              ),

              Container(
                padding: EdgeInsets.all(14),
                width: width,
                height: height * 0.1,
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
                child: const Text(
                  "In total, the green community have recycled over 15 Tonnes of waste that would otherwise have ended up in landfills and ocean",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: Color.fromRGBO(99, 97, 97, 1)),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "Most Recycle",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BuildBrandContainer(
                    image: "assets/images/cola.png",
                    text: "8 522",
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  const BuildBrandContainer(
                    image: "assets/images/sprite.png",
                    text: "6 100",
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const BuildHomeItem2(),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                "Nearby bin station",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  padding: EdgeInsets.all(14),
                  width: width,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    color: klightgreen2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/map.png",
                        height: 200,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "150m|3min",
                          ),
                          const Text(
                            "central station gate A",
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            "30% space available ",
                            style: TextStyle(color: kLightOrange),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: kPrimaryColor,
                              ),
                              Text(
                                "Plastic ",
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
