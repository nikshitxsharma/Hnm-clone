import 'package:flutter/material.dart';
import 'package:hnm2/models/dummydata.dart';
import 'package:hnm2/models/dummynew.dart';
import 'package:hnm2/screens/homescreen.dart';
import 'package:hnm2/widgets/categoryscreen.dart';
import 'package:hnm2/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget? activescreen;

  @override
  void initState() {
    activescreen = HomeScreen(recdata: dummy, aitem: switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activescreen = CategoryScreen(ddd: dummynew);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(
        category: dummy,
      ),
      appBar: AppBar(
        actions: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_2_outlined),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            iconSize: 30,
          )
        ],
      ),
      body: activescreen,
    );
  }
}
