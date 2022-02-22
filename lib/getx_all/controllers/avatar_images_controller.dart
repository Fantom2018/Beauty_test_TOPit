import 'dart:io';

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/color_constants.dart';

class AvatarImagesController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;
  final ImagePicker _picker = ImagePicker();

  void getImage(ImageSource imageSource) async {
    final  image = await _picker.pickImage(source: ImageSource.gallery);
    /*final XFile? photo = await _picker.pickImage(source: ImageSource.camera);*/
    if (image != null){
      selectedImagePath.value = image.path;
      selectedImageSize.value = ((File(selectedImagePath.value)).lengthSync()/1024/1024).toStringAsFixed(2)+"Mb";
    }else{
      Get.snackbar('Error', 'Рисунок не выбран',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: StColor.purple9_Color,
        colorText: StColor.yellow9_Color,
      );
    }
  }
}

