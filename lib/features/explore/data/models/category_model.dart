import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;

  const CategoryModel({
    required this.name,
    required this.icon,
  });
  static List<CategoryModel> categories = [
    const CategoryModel(
      name: 'Business',
      icon: Icons.business,
    ),
    const CategoryModel(
      name: 'Education',
      icon: Icons.grade,
    ),
    const CategoryModel(
      name: 'Business',
      icon: Icons.business,
    ),
    const CategoryModel(
      name: 'Education',
      icon: Icons.grade,
    ),
    const CategoryModel(
      name: 'Business',
      icon: Icons.business,
    ),
    const CategoryModel(
      name: 'Education',
      icon: Icons.grade,
    ),
    const CategoryModel(
      name: 'Business',
      icon: Icons.business,
    ),
    const CategoryModel(
      name: 'Education',
      icon: Icons.grade,
    ),
    const CategoryModel(
      name: 'Business',
      icon: Icons.business,
    ),
    const CategoryModel(
      name: 'Education',
      icon: Icons.grade,
    ),
  ];
}
