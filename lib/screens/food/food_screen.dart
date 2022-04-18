import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/food/widgets/btn_addtocart.dart';
import 'package:flutter_app_delivery/screens/food/widgets/btn_incrementa.dart';
import 'package:flutter_app_delivery/screens/food/widgets/header.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kwhite,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0,
          bottom: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const BtnIncrementa(),
            const SizedBox(height: 0.0),
            Text(
              "Chicken Burger\n22.00",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: AppTheme.dBackground, fontWeight: FontWeight.w500),
            ),
            Text(
              "Crujiente carne de pollo apanada a\nla perfección. Sensación única",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: AppTheme.tBackground, fontStyle: FontStyle.normal, fontSize: 12),
            ),
            const BtnSession(),
            Center(
              child: Text(
                "Encuéntranos en nuestras redes sociales!",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: AppTheme.tBackground, fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
