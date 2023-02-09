import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:task_1/confirmation_page.dart';
import 'package:task_1/db/restaurant_data_model.dart';

class RestaurantList extends StatelessWidget {
  RestaurantList({super.key});
  List<RestaurantDataModel> resturantList = [
    RestaurantDataModel(
        name: 'Karnavati Restaurant', location: 'Narayanpath, Bhairahawa'),
    RestaurantDataModel(name: 'Cheesy Pizza', location: 'Dish')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contetx, index) => Card(
              color: Colors.white,
              child: ListTile(
                onTap: () => Get.to(() => const ConfirmationPage()),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                leading: const Card(
                    child: CircleAvatar(
                        backgroundImage: AssetImage('assets/image.webp'))),
                title: Text(
                  resturantList[index].name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  resturantList[index].location,
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 2);
  }
}
