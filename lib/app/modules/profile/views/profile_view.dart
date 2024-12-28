import 'package:exercise_dirbbox_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset("assets/icons/profile_back_icon.png"),
        ),
        title: const Text(
          'My Profile',
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
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            // width selalu mengikuti parent karena menggunakan listview
            // width: 100,
            // height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/profile_avatar_image.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Neelesh Chaudhary",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff22215b),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "UI/UX Designer",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff22215b),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 275,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xff22215b).withOpacity(0.6),
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xffFF317B),
                      ),
                      width: 40,
                      height: 20,
                      child: Center(
                        child: Text(
                          "PRO",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folder",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff22215b),
                  ),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/profile_add_icon.png"),
                      Image.asset("assets/icons/profile_setting_icon.png"),
                      Image.asset("assets/icons/profile_forward_icon.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
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
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Prototypes",
                  date: "November 22, 2020",
                  icon: "assets/icons/profile_folder_red_icon.png",
                  optionIcon: "assets/icons/profile_option_v_red.png",
                  backgroundColor: Color(0xffFEEEEE),
                  textColor: Color(0xffAC4040),
                ),
                CardFolder(
                  title: "Avatars",
                  date: "November 10, 2020",
                  icon: "assets/icons/profile_folder_green_icon.png",
                  optionIcon: "assets/icons/profile_option_v_green.png",
                  backgroundColor: Color(0xffF0FFFF),
                  textColor: Color(0xff23B0B0),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff22215b),
                  ),
                ),
                Image.asset("assets/icons/profile_sort_icon.png"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: ListTile(
              leading: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffeef7fe),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset("assets/icons/profile_word_icon.png")),
              title: Text(
                "Projects.docs",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff22215b),
                ),
              ),
              subtitle: Text(
                "November 22, 2020",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff22215b).withOpacity(0.6),
                ),
              ),
              trailing: Text(
                "300kb",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff22215b).withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  final String title;
  final String date;
  final Color backgroundColor;
  final String optionIcon;
  final Color textColor;
  final String icon;

  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.backgroundColor,
    required this.optionIcon,
    required this.textColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(icon),
              Image.asset(optionIcon),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 10,
                  color: textColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
