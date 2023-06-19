import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_news_app/Controller/news_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: GetBuilder<NewsControoler>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          actions: [
            IconButton(
                onPressed: () {
                  controller.changetheme();
                },
                icon: Icon(controller.icondata()))
          ],
        ),
      );
    }), onWillPop: () async {
      return await Get.dialog(AlertDialog(
        title: const Text("Exit  from the App"),
        content: const Text("are you sure to exit from app?"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Get.back(result: true);
              },
              child: const Text("yes")),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("no")),
        ],
      ));
    });
  }
}
