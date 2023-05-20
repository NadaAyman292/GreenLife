import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_life/constants/constant.dart';
import 'package:green_life/screens/product_screen.dart';

import '../view/wallet_view.dart';
import '../widgets/raw_wllet_item.dart';
import '../widgets/walet_item.dart';
import 'community_screen.dart';
import 'home_screen.dart';
import 'location_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: BottomNavigationBar(
                elevation: 0,
                currentIndex: _currentIndex,
                selectedLabelStyle: TextStyle(color: kPrimaryColor),
                selectedItemColor: kPrimaryColor,
                unselectedLabelStyle: TextStyle(color: Colors.black),
                unselectedItemColor: Colors.black,
                showUnselectedLabels: true,
                selectedIconTheme: IconThemeData(color: kPrimaryColor),
                onTap: (index) {
                  _currentIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      "assets/icons/home-2.svg",
                      color: kPrimaryColor,
                    ),
                    icon: SvgPicture.asset(
                      "assets/icons/home-2.svg",
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset(
                      "assets/icons/wallet.svg",
                      color: kPrimaryColor,
                      width: 20,
                      height: 20,
                    ),
                    icon: SvgPicture.asset(
                      "assets/icons/wallet.svg",
                      width: 20,
                      height: 20,
                    ),
                    label: "wallet",
                  ),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        "assets/icons/location.svg",
                        color: kPrimaryColor,
                      ),
                      icon: SvgPicture.asset(
                        "assets/icons/location.svg",
                      ),
                      label: "location"),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        "assets/icons/product.svg",
                        color: kPrimaryColor,
                        width: 20,
                        height: 20,
                      ),
                      icon: SvgPicture.asset(
                        "assets/icons/product.svg",
                        width: 20,
                        height: 20,
                      ),
                      label: "Product"),
                  BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        "assets/icons/community.svg",
                        color: kPrimaryColor,
                      ),
                      icon: SvgPicture.asset(
                        "assets/icons/community.svg",
                      ),
                      label: "Community")
                ]),
          ),
        ),
        appBar: _currentIndex == 1
            ? AppBar(
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
                  "Wallet",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                actions: [Image.asset(notification)],
              )
            : null,
        body: _currentIndex == 0
            ? const HomeScreen()
            : _currentIndex == 1
                ? const SingleChildScrollView(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: WalletView(),
                    ),
                  )
                : _currentIndex == 2
                    ? const LocationScreen()
                    : _currentIndex == 3
                        ? const ProductScreen()
                        : const CommunityScreen());
  }
}
