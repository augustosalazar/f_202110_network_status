import 'package:connectivity/connectivity.dart';
import 'package:f_202110_network_status/core/network_info.dart';
import 'package:get/get.dart';

enum ConnectionStatus { no, wifi, cell }

class HomeController extends GetxController {
  final NetworkInfo network = Get.find();
  final connectionStatus = ConnectionStatus.no.obs;

  getNetworkValue(status) {
    switch (status) {
      case ConnectivityResult.none:
        print("No network");
        connectionStatus.value = ConnectionStatus.no;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = ConnectionStatus.cell;
        print("Mobile");
        break;
      case ConnectivityResult.wifi:
        connectionStatus.value = ConnectionStatus.wifi;
        print("Wifi");
        break;
    }
  }

  @override
  void onInit() {
    super.onInit();

    network.onConnectivityChanged.listen((event) {
      getNetworkValue(event);
    });
  }
}
