import 'package:get/get.dart';
import 'package:getx_news_app/Controller/news_controller.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => NewsControoler());
    //Get.put(NewsControoler());
  }

}