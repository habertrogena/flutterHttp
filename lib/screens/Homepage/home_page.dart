import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:httptest/controllers/controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<Controller>();
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('AlbumId:${controller.albumModel.albumId}'),
                    Text('ID:${controller.albumModel.id}'),
                    Text('Title:${controller.albumModel.title}'),
                    // Image.network(
                    //     'ThumbnailUrl ${controller.albumModel.thumbnailUrl}'),
                  ],
                ),
              ),
      ),
    );
  }
}
