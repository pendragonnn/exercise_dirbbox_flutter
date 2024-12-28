import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSideMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                height: 120,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(55),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        "assets/images/profile_avatar_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Neelesh",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff1B1D28),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Seattle, Washington",
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff7B7F9E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset("assets/icons/side_menu_icon.png")),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Storage",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Shared",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Stats",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B1D28),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Row(
              children: [
                Image.asset("assets/icons/side_logout_icon.png"),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff1B1D28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: Text(
              "Version 2.0.1",
              style: TextStyle(
                fontSize: 10,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
