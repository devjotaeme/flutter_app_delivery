import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/models/category_model.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ItemCategory(category: categories[index]);
        },
      ),
    );
  }
}

class ItemCategory extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ItemCategory({
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65.0,
      margin: const EdgeInsets.only(left: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 25.0,
            child: Align(
            alignment: Alignment.topRight,
              child: Text (
                '${category.title}', // modelo,
                //maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.caption!.copyWith(
                    color: AppTheme.kwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 10.0),
                ),         
            ),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: category.color, // modelo,
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  //fit: BoxFit.fill,
                  alignment: Alignment.topLeft,
                  image: AssetImage(
                      "${category.path}")
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
