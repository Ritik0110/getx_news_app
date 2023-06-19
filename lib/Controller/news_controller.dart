import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class NewsControoler extends GetxController {

  final box = GetStorage();
  void changetheme() {
    box.write("theme", Get.isDarkMode);
    print(Get.isDarkMode);
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    update();
  }

  IconData icondata(){
    bool? theme = box.read("theme");
    if(theme==true || theme==null){
      return Icons.light_mode;
    }else{
      return Icons.dark_mode;
    }
  }


}
