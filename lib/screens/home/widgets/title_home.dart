import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

import '../../../constant/constant.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 28.0,
      margin: const EdgeInsets.only(left: 20.0, right: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70.0,
            child: const Align(
            alignment: Alignment.topLeft,
              child: Text(
                'Order Your Food\nFast and Free',
                style: TextStyle(fontSize: 18, color: AppTheme.dBackground, fontWeight: FontWeight.w400),
              ),
            ),
            //padding: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(
              left: kMarginApp,
              right: kMarginApp,
              top: 5.0,
              bottom: 20.0,
            ),
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              //color: AppTheme.kGreen,
              //borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                  //fit: BoxFit.fill,
                  alignment: Alignment.centerRight,
                  image: AssetImage(
                      "assets/images/images.jpg")
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
