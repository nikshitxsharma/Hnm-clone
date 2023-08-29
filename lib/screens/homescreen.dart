import 'package:flutter/material.dart';
import 'package:hnm2/models/category_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.recdata, required this.aitem});

  final List<CategoryModel> recdata;
  final void Function() aitem;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: ListView.builder(
        itemCount: recdata.length,
        itemBuilder: (context, index) => InkWell(
          onTap: aitem,
          child: SizedBox(
            height: width * 0.8,
            width: width * 0.8,
            child: Image.asset(
              recdata[index].bigimg,
            ),
          ),
        ),
      ),
    );
  }
}
