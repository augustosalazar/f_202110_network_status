import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/network_info.dart';
import 'presentation/controllers/home_controller.dart';
import 'presentation/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(Connectivity());
  Get.put(NetworkInfo());
  Get.put(HomeController());
  runApp(Home());
}
