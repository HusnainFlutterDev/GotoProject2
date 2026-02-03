import 'dart:convert';

import 'package:http/http.dart';
import 'package:get/get.dart';

class ServerController extends GetxController {
  RxList servers = [].obs;
  RxBool isLoading = false.obs;
  RxDouble progressValue = 0.0.obs;
  RxBool passwordhidden = true.obs;
  RxInt SelectedIndex = 0.obs;
  RxString selectedServerName = 'name'.obs;
  RxBool isselected = false.obs;
  Future getserver() async {
    try {
      isLoading.value = true;

      var response = await get(
        Uri.parse("https://totem.tecclubb.com/api/servers?platform=ios"),
      );

      servers.value = jsonDecode(response.body)["servers"];
      if (servers.isNotEmpty) SelectedIndex.value = 0;
    } catch (e) {
      isLoading.value = false;
    }
  }
}
