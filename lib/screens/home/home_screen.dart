import 'package:flutter/material.dart';
//import 'package:flutter_app_delivery/constant/constant.dart';
import 'package:flutter_app_delivery/global_widgets/content_title.dart';
import 'package:flutter_app_delivery/screens/home/widgets/bottom_navigator_app.dart';
import 'package:flutter_app_delivery/screens/home/widgets/category.dart';
import 'package:flutter_app_delivery/screens/home/widgets/order.dart';
import 'package:flutter_app_delivery/screens/home/widgets/search.dart';
import 'package:flutter_app_delivery/screens/home/widgets/title_home.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kwhite,
      appBar: AppBar(
        backgroundColor: AppTheme.dBackground,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(
            "assets/icons/Trazado.png",
          ),
        ),
        actions: const [
          Icon(Icons.facebook_rounded),
          SizedBox(width: 30.0),
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9Y5F55ClU9OJ9ZgQRFSSDsxps_2uZKtAuuw&usqp=CAU",
            ),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        children: const [
          TitleHome(),
          Search(),
          ContentTitle(title: "Categories", more: true),
          Category(),
          ContentTitle(title: "Your Order"),
          Order(),
          Order(),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorApp(),
    );
  }
}
