import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/food/food_screen.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class BtnIncrementa extends StatelessWidget {
  const BtnIncrementa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () {
       // Navigator.pushReplacement(
       //   context,
       //   MaterialPageRoute(
       //     builder: (BuildContext context) => const HomeScreen(),
       //   ),
       // );
      //},
    // ignore: unused_label
      child: Container(
        width: double.infinity,
        height: 26.0,
        alignment: Alignment.center,
        child: ClipOval(
          child: Material(
            color: AppTheme.dBackground, // button color
            child: InkWell(
              splashColor: AppTheme.dBackintro, // splash color          
              //onTap: () {}, // button pressed
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const FoodScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const SizedBox(width:26, height:24, child: Icon(Icons.add, color: Colors.white)),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
