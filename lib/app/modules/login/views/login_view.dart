import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background
          Container(
            width: Get.width,
            child: Image.asset(
              "assets/images/login_bg.png",
              fit: BoxFit.cover,
            ),
          ),
          //layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/images/login_picture.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    color: Color(0xFF22215B),
                  ),
                ),
                Text(
                  "Dirbbox",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF22215B),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 223,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to manage there data \n \n Join For Free",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF7B7F9E),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(
                          0xff567DF4,
                        ),
                        backgroundColor: Color(0xffeef7fe),
                        fixedSize: Size(150, 50),
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/login_button_icon.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Smart Id",
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xff567df4),
                        fixedSize: Size(150, 50),
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("assets/icons/login_button_icon2.png"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 54,
                ),
                Center(
                  child: Text(
                    "Use Social Login",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF1B1D28),
                    ),
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/login_instagram_icon.png",
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Image.asset("assets/icons/login_twitter_icon.png"),
                    SizedBox(
                      width: 50,
                    ),
                    Image.asset("assets/icons/login_facebook_icon.png"),
                  ],
                ),
                SizedBox(
                  height: 55,
                ),
                Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF1B1D28),
                    ),
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
