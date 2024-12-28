import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/storage_controller.dart';

class StorageView extends GetView<StorageController> {
  const StorageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset("assets/icons/profile_back_icon.png")),
        title: const Text(
          'Storage Details',
          style: TextStyle(
            color: Color(0xff22215b),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff1f1f1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
            ),
            child: Image.asset(
              "assets/icons/profile_option_icon.png",
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 40,
        ),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/storage_pie_image.png",
              height: 148,
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Available",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215B),
                  ),
                ),
                Text(
                  "43.36 GB",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff22215B),
                  ),
                ),
                Text(
                  "Total 128 GB",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215B),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            StorageListWidget(
              title: "Design Files",
              storage: "38.66",
              mainColor: Color(0xff22215B),
              percentage: 70.0,
            ),
            StorageListWidget(
              title: "Images",
              storage: "24.80",
              mainColor: Color(0xffFFC700),
              percentage: 50.0,
            ),
            StorageListWidget(
              title: "Video",
              storage: "12.60",
              mainColor: Color(0xff4CE364),
              percentage: 45.0,
            ),
            StorageListWidget(
              title: "Documents",
              storage: "06.57",
              mainColor: Color(0xff567DF4),
              percentage: 80.0,
            ),
            StorageListWidget(
              title: "Others",
              storage: "2.01",
              mainColor: Color(0xffFF842A),
              percentage: 24.0,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              "Export Details",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff22215B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StorageListWidget extends StatelessWidget {
  final String title;
  final String storage;
  final Color mainColor;
  final double percentage;

  const StorageListWidget({
    required this.title,
    required this.storage,
    required this.mainColor,
    required this.percentage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: mainColor,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff22215B),
                    ),
                  ),
                  Text(
                    "$storage GB",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff22215B).withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  height: 5,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffEEF7FE),
                  ),
                ),
                Container(
                  height: 5,
                  width: percentage,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: mainColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
