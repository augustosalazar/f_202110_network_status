import 'package:f_202110_network_status/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Connectivity test"),
        ),
        body: GetX<HomeController>(
          builder: (controller) {
            return Center(
              child: Text(controller.connectionStatus.toString()),
            );
          },
        ),
      ),
    );
  }
}
