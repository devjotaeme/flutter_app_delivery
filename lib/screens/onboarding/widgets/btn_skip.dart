import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/home/home_screen.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class BtnCreateAccount extends StatelessWidget {
  const BtnCreateAccount({Key? key}) : super(key: key);

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
        height: 56.0,
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
                      builder: (BuildContext context) => const HomeScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const SizedBox(width:56, height:50, child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)),
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
