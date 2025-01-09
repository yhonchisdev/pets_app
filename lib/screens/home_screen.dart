import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_app/widgets/circular_menu.dart';
import 'package:pet_app/widgets/circular_menu_item.dart';
import 'package:pet_app/widgets/custom_app_bar.dart';
import 'package:pet_app/widgets/custom_bottom_app_bar.dart';
import 'package:pet_app/widgets/farm_animals.dart';
import 'package:pet_app/widgets/house_animals.dart';
import 'package:pet_app/widgets/stories.dart';
import 'package:pet_app/widgets/wellcome.dart';

enum DataType { all, farmAnimals, houseAnimals }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataType dataType = DataType.farmAnimals;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void changeDataType(DataType value) {
    setState(() {
      dataType = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight + 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wellcome(),
            ),
            SizedBox(
              height: 16,
            ),
            Stories(),
            Builder(
              builder: (context) {
                switch (dataType) {
                  case DataType.farmAnimals:
                    return FarmAnimals();
                  case DataType.houseAnimals:
                    return HouseAnimals();
                  case DataType.all:
                    return Column(
                      children: [FarmAnimals(), HouseAnimals()],
                    );
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
      floatingActionButton: CircularMenu(
        assetIcon: 'assets/icons/plus.svg',
        radius: 60,
        startingAngleInRadian: 1.25 * pi,
        endingAngleInRadian: 1.75 * pi,
        items: [
          CircularMenuItem(
            onPressed: () => changeDataType(DataType.farmAnimals),
            assetIcon: 'assets/icons/email.svg',
            active: dataType == DataType.farmAnimals,
          ),
          CircularMenuItem(
            onPressed: () => changeDataType(DataType.all),
            assetIcon: 'assets/icons/plus.svg',
            active: dataType == DataType.all,
          ),
          CircularMenuItem(
            onPressed: () => changeDataType(DataType.houseAnimals),
            assetIcon: 'assets/icons/bell.svg',
            active: dataType == DataType.houseAnimals,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
