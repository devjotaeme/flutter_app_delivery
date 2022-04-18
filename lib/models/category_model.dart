import 'package:flutter/material.dart';
import 'package:flutter_app_delivery/theme/app_theme.dart';

class CategoryModel {
  CategoryModel({
    this.id,
    this.title,
    this.path,
    this.color, 
  });

  int? id;
  String? title;
  String? path;
  Color? color;
}

List<CategoryModel> categories = [
  CategoryModel(
    id: 1,
    title: "Burger",
    path: "assets/images/icoburger.jpg",
    color: AppTheme.dBackground,
  ),
  CategoryModel(
    id: 2,
    title: "Pizza",
    path: "assets/images/icopizza.jpg",
    color: AppTheme.dBackground,
  ),
  CategoryModel(
    id: 3,
    title: "Postre",
    path: "assets/images/icopastel.jpg",
    color: AppTheme.dBackground,
  ),
  CategoryModel(
    id: 4,
    title: "Bebida",
    path: "assets/images/icobebida.jpg",
    color: AppTheme.dBackground,
  ),
  CategoryModel(
    id: 5,
    title: "Burger",
    path: "assets/images/icoburger.jpg",
    color: AppTheme.dBackground,
  ),
];
