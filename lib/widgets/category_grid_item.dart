import 'package:flutter/material.dart';
import 'package:meals_app/screens/meals_screen.dart';
import '../models/category.dart' as mCategory;

class CategoryGridItem extends StatelessWidget {
  final mCategory.Category category;
  final void Function() onSelectCateroy;

  const CategoryGridItem({
    super.key,
    required this.category,
    required this.onSelectCateroy,
  });


  @override
  Widget build(BuildContext context) {

    
    return InkWell(
      onTap: onSelectCateroy,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.55),
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}
