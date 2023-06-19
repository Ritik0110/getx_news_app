import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_news_app/View/Screens/home_screen.dart';

import 'services/bindings.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  HomeBindings().dependencies();
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    print(box.read("theme"));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: HomeBindings(),
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: box.read("theme") == true ? ThemeMode.light: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
