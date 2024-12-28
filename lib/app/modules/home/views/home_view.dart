import 'package:exercise_dirbbox_flutter/app/modules/home/views/widget/home_side_menu_widget.dart';
import 'package:exercise_dirbbox_flutter/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Color(0xff22215B),
          borderRadius: BorderRadius.circular(
            100,
          ),
        ),
        child: Image.asset("assets/icons/home_add_icon.png"),
      ),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: const Text(
            'Your Dirbbbox',
            style: TextStyle(
              color: Color(0xff22215b),
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 30.0,
            ),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => HomeSideMenuWidget(),
                );
              },
              child: Image.asset(
                "assets/icons/home_menu_icon.png",
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              height: 55,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffEEF2FE),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/home_search_icon.png"),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    child: TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Folder",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    color: Color(0xff22215B),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/icons/home_menu_line_icon.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/home_filter_icon.png"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Mobile Apps",
                  date: "December 20, 2020",
                  icon: "assets/icons/profile_folder_blue_icon.png",
                  optionIcon: "assets/icons/profile_option_v_blue.png",
                  backgroundColor: Color(0xffEEF7FE),
                  textColor: Color(0xff415EB6),
                ),
                CardFolder(
                  title: "SVG Icons",
                  date: "December 14, 2020",
                  icon: "assets/icons/profile_folder_yellow_icon.png",
                  optionIcon: "assets/icons/profile_option_v_yellow.png",
                  backgroundColor: Color(0xffFFFBEC),
                  textColor: Color(0xffFFB110),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
