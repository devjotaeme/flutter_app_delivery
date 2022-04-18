import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/food/food_screen.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class BtnSession extends StatelessWidget {
  const BtnSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const FoodScreen(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 40.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppTheme.dBackground,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          "Add to Cart",
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: AppTheme.kwhite, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
