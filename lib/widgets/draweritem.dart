import 'package:flutter/material.dart';
import 'package:hnm2/models/category_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.item,
  });

  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(
            item.image,
          ),
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
