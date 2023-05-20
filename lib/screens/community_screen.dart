import 'package:flutter/material.dart';
import 'package:green_life/widgets/custom_image.dart';

import '../constants/constant.dart';
import '../widgets/build_news_item.dart';
import '../widgets/build_video_item.dart';
import '../widgets/custom_text_form_feild.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    List<String> image = [
      "assets/images/events.png",
      "assets/images/recycle_today.png"
    ];
    List<String> recycleImage = [
      "assets/images/recycle4.png",
      "assets/images/recycle5.png",
      "assets/images/recycle6.png"
    ];
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
          "Community",
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
                "Your Community",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              const CustomTextFormFeild(),
              SizedBox(
                height: height * 0.02,
              ),
              const Text(
                " Community",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Stack(
                children: [
                  Container(
                    width: width * 0.5,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/images/community.jpg",
                            ))),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(14),
                      width: width * 0.8,
                      height: height * 0.15,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "ECO Green",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/group.png"),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              const Text(
                                "50 Members",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: width * 0.16,
                              ),
                              Container(
                                width: 100,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Join",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: const [
                  Text(
                    " Events",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),

              //**horizontal listview */
              SizedBox(
                height: 180,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomImage(image: image[index]);
                    }),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: const [
                  Text(
                    " News",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                      height: 20,
                      color: Colors.grey,
                    );
                  },
                  itemBuilder: (context, index) {
                    return BuildNewsItem(
                      image: recycleImage[index],
                    );
                  }),
              Row(
                children: const [
                  Text(
                    " Videos",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Articals",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 60, 59, 59)),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              BuildVideoItem(),
              SizedBox(
                height: height * 0.04,
              ),
              BuildVideoItem(),
            ],
          ),
        ),
      ),
    );
  }
}
