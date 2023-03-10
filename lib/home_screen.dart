import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_1/dishes_list.dart';
import 'package:task_1/restaurant_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.black,
                  size: 36,
                ),
                suffixIcon: const Icon(
                  Icons.close,
                  size: 36,
                ),
                style: const TextStyle(color: Colors.black),
              ),
              TabBar(
                  indicatorColor: Colors.red,
                  controller: _tabController,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(
                      text: 'Restaurant',
                    ),
                    Tab(
                      text: 'Dish',
                    )
                  ]),
              Expanded(
                  child: TabBarView(
                      controller: _tabController,
                      children: [RestaurantList(), const DishesList()]))
            ],
          ),
        ),
      ),
    );
  }
}
