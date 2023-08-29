import 'package:flutter/material.dart';
import 'package:hnm2/models/cat_modal.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.ddd});

  final List<CatModal> ddd;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: ddd.length,
      itemBuilder: (context, index) => Container(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                ddd[index].image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              ddd[index].title,
              style: const TextStyle(fontSize: 15),
            ),
            Text(
              ddd[index].price,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
