import 'dart:ffi';

import 'package:exercise_dirbbox_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset("assets/icons/setting_back_icon.png"),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff22215b),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  bottom: 20,
                ),
                title: Text(
                  "Add Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215b),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(Routes.CHANGE_PASSWORD);
                },
                contentPadding: EdgeInsets.only(
                  bottom: 20,
                ),
                title: Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215b),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  bottom: 20,
                ),
                title: Text(
                  "Change Language",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215b),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  bottom: 20,
                ),
                title: Text(
                  "Upgrade Plan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215b),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  bottom: 20,
                ),
                title: Text(
                  "Multiple Account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff22215b),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable Sync",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff22215b),
                    ),
                  ),
                  Obx(
                    () => Switch(
                      value: controller.isSyncSwitched.value,
                      onChanged: controller.isSyncSwitched,
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: Color(0xff00BCD4),
                      inactiveTrackColor: Color(0xff00BCD4),
                      trackOutlineColor:
                          WidgetStateProperty.resolveWith<Color?>(
                              (Set<WidgetState> states) {
                        if (states.contains(WidgetState.disabled)) {
                          return Colors.transparent;
                        }
                        return Colors.transparent; // Use the default color.
                      }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable 2 Step Verification",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff22215b),
                    ),
                  ),
                  Obx(
                    () => Switch(
                      value: controller.isVerSwitched.value,
                      onChanged: controller.isVerSwitched,
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: Color(0xff00BCD4),
                      inactiveTrackColor: Color(0xff00BCD4),
                      trackOutlineColor:
                          WidgetStateProperty.resolveWith<Color?>(
                              (Set<WidgetState> states) {
                        if (states.contains(WidgetState.disabled)) {
                          return Colors.transparent;
                        }
                        return Colors.transparent; // Use the default color.
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
