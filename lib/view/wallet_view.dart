import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/constant.dart';
import '../widgets/raw_wllet_item.dart';
import '../widgets/walet_item.dart';

class WalletView extends StatefulWidget {
  const WalletView({super.key});

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      ///*Container*//
      Container(
        height: height * 0.15,
        width: width,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/icons/recycle.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "P22.078",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.white),
              ),
              const Text(
                "Wallet Balance",
                style: TextStyle(
                    color: kGreyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )
            ],
          ),
        ),
      ),

      const SizedBox(
        height: 20,
      ),
      const RawWalletItem(),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Transactions",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Text(
            "All",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, color: Colors.red),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return WalletItem();
        },
      )
    ]);
  }
}
