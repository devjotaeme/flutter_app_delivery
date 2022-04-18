import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/models/order_model.dart';
import 'package:flutter_app_delivery/screens/food/food_screen.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return ItemOrder(order: orders[index]);
        },
      ),
    );
  }
}

class ItemOrder extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ItemOrder({
    required this.order,
  });

  final OrderModel order;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      margin: const EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 90.0,
            child: Align(
            alignment: Alignment.topRight,
              child: Text (
                '${order.title}', // modelo,
                //maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption!.copyWith(
                    color: AppTheme.kwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
                ),         
            ),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: order.color, // modelo,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  //fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                  image: AssetImage(
                      "${order.path}")
                      ),
            ),
          ),
          Text(
            "${order.subText}",
            //maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: AppTheme.tBackground, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              InkWell(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: IconButton(
                        icon: const Icon(Icons.add_circle_outline),
                        color: AppTheme.kPrimaryColor,
                        iconSize: 20.0,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => const FoodScreen(),
                            ),
                          );
                        },
                        //onPressed: () {
                        //  // ignore: avoid_print
                        //  print('Agregado');
                        //},
                      ),
                    ),
                  ),
                ),
              const SizedBox(width: 0.0),
              Text(
                "${order.detalle}",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: AppTheme.tBackground, fontSize: 12.0),
              ),
              //const Spacer(),
              const Icon(
                Icons.attach_money_outlined,
                color: AppTheme.kPrimaryColor,
                size: 18.0,
              ),
              const SizedBox(width: 0.0),
              Text(
                "${order.precio}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: AppTheme.dBackground, 
                    fontWeight: FontWeight.w600, 
                    fontSize: 16.0),
              ),
            ],
          ),
        ],
      ),
    );
  }  
}
