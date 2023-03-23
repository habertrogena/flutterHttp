import 'dart:convert';

import 'package:get/get.dart';
import 'package:httptest/models/album_model.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  late AlbumModel albumModel; // which will display the data
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAlbumData();
  }

//method to call in data
  Future<void> fetchAlbumData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/1'));

    if (response.statusCode == 200) {
      albumModel = AlbumModel.fromJson(jsonDecode(response.body));

      isLoading.value = false;
    } else {
      Get.snackbar('Error loading data!',
          'server responded:${response.statusCode}:${response.reasonPhrase.toString()}');
    }
  }
}

//http request is for getting data from the url
