import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/onboarding/widgets/btn_skip.dart';
import 'package:flutter_app_delivery/screens/onboarding/widgets/header.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dBackintro,
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
            const SizedBox(height: 10.0),
            Text(
              "Find and Get\nYour Best Food",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            Text(
              "Find the most delicious food\nwith the best quality and free delivery here",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 10),
            ),
            //const BtnSession(),
            const BtnCreateAccount(),
            Center(
              child: Text(
                "Skip",
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 12, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
