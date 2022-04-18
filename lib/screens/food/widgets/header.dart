import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/screens/home/home_screen.dart';
//import 'package:flutter_app_delivery/models/category_model.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

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
            // Botón volver
            child:InkWell(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        color: AppTheme.dBackground,
                        iconSize: 20.0,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
            // ...Botón volver
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 232, 186),
              borderRadius: BorderRadius.circular(10.0),    
              image: const DecorationImage(
                    //fit: BoxFit.fill,
                    image: AssetImage("assets/images/burger1.png")),
            ),
            //child: Image.asset("assets/images/intro.png"),
            //child: const Text(
            //"The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.",
            //style: TextStyle(color: Colors.white),
            //),
          ),
        ],
      ),
    );
  }
}
