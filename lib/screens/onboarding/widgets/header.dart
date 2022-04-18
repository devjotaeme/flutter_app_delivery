import 'package:flutter/material.dart';
//import 'package:flutter_app_delivery/models/category_model.dart';
//import 'package:flutter_app_delivery/theme/app_theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 350.0,
            width:220,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              //color: AppTheme.dBackintro,
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(10.0),
              image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/intro.png")),
            ),
            //child: Image.asset("assets/images/intro.png"),
            //child: const Text(
            //    "The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.",
            //    style: TextStyle(color: Colors.white),
            //),
          ),
        ],
      ),
    );
  }
}
