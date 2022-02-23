import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import '../../getx_all/controllers/avatar_images_controller.dart';
import '../../widgets/color_constants.dart';
import 'package:image_picker/image_picker.dart';



class MasterPersonalScreen extends GetView<AvatarImagesController> {
  @override
  AvatarImagesController controller =Get.put(AvatarImagesController());

  MasterPersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              /*title: const Text('Профиль',
                style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Medium', color: StColor.gray9_Color),),*/
              centerTitle: true,
              actions:   <Widget>[
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black87,
                      onPressed: () {Get.back();},),
                    const Text('Назад',
                      style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Medium', color: StColor.gray9_Color),),

                    SizedBox(width: 190,),
                    const Text('Сохранить',
                      style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.gray9_Color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ],
            ),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 24.0),
                    Center(
                      child: Hero(
                        tag: 'logo',
                        child: Container(
                          child:
                          Obx(
                                () => controller.selectedImagePath.value == ''
                                ? const Text(
                              'Select image ',
                              style: TextStyle(fontSize: 20),
                            )
                                : ClipOval(
                                  child: Image.file(
                              File(controller.selectedImagePath.value),
                                      height: 120,
                                      width: 110,
                                      fit: BoxFit.cover
                            ),
                                ),
                          ),


                          /*Obx(() => Text(
                            controller.selectedImageSize.value == ''
                                ? ''
                                : controller.selectedImageSize.value,
                            style: TextStyle(fontSize: 20),
                          )),*/


                          //Image.asset('images/Ellipse100.png'),
                          height: 100,
                          /*width: 100,
                         decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            //color: StColor.gray1_Color,
                            image: DecorationImage(
                              image: AssetImage("assets/images/ellipse_100px.png"),
                              fit: BoxFit.cover,
                            ),
                          ),*/
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    InkWell(
                      child: SizedBox(
                        height: 20, width: 180,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.camera_alt,
                              color: StColor.blue6_Color,),
                            SizedBox(width: 10,),
                            Text(
                              'Загрузить фото',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: 'SF-Pro-Text-Regular', color: StColor.blue6_Color ),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                          context: (context),
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(18))
                          ),
                          builder: (context)=>   bottomSheet(context),
                        
                        );
                      },
                    ),
                    SizedBox(height: 24.0),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            height: 64,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('FIO',
                                        style: TextStyle(fontSize: 12, fontFamily: 'SF-Pro-Text-Regular', color: StColor.gray1_Color),
                                      ),
                                      Text('Екатерина Иванова',
                                        style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.black_Color),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.lock),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: StColor.light_backGroundColor,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 64,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Студия',
                                        style: TextStyle(fontSize: 12, fontFamily: 'SF-Pro-Text-Regular', color: StColor.gray1_Color),
                                      ),
                                      Text('Epilier Казань',
                                        style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.black_Color),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.lock),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: StColor.light_backGroundColor,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 64,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Телефон',
                                        style: TextStyle(fontSize: 12, fontFamily: 'SF-Pro-Text-Regular', color: StColor.gray1_Color),
                                      ),
                                      Text('+7 999 909 02 00',
                                        style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.black_Color),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.lock),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: StColor.light_backGroundColor,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 64,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Email',
                                        style: TextStyle(fontSize: 12, fontFamily: 'SF-Pro-Text-Regular', color: StColor.gray1_Color),
                                      ),
                                      Text('mail@mail.or',
                                        style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.black_Color),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.lock),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: StColor.wBackGroundColor,
                                boxShadow: const [
                                  BoxShadow(blurStyle: BlurStyle.normal,
                                      color: StColor.shadowColor,
                                      blurRadius: 12.0,
                                      offset: Offset(0, 2),
                                      spreadRadius: 3.0),
                                ]
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            height: 150,
                            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                              child: Text('Tellus tempor dui pellentesque tortor fusce ornare id. Nunc cursus integer est nunc et tellus nunc. Amet in montes, vulputate quam vivamus ornare justo, eget quisque.',
                                style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: StColor.black_Color),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: StColor.wBackGroundColor,
                                boxShadow: const [
                                  BoxShadow(blurStyle: BlurStyle.normal,
                                      color: StColor.shadowColor,
                                      blurRadius: 12.0,
                                      offset: Offset(0, 2),
                                      spreadRadius: 3.0),
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),



                  ],))
        ));
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.grey[600],
      width: double.infinity,
      height: size.height*0.31,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget> [
          SizedBox(height: 5,),
          Container(
            width: 355.0,
            height: 56.0,
            decoration:  BoxDecoration(
              color: StColor.wBackGroundColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular (16), topRight: Radius.circular (16) ),
            ),
            child: Center(
              child: TextButton(
                onPressed: () { controller.getImage(ImageSource.gallery); },
                child: Text('Фотогалерея',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                ),
              ),
            ),
          ),
          SizedBox(height: 3.0),

          Container(
            width: 355.0,
            height: 56.0,
            decoration:  BoxDecoration(
              color: StColor.wBackGroundColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular (16), bottomRight: Radius.circular (16) ),
            ),
            child: Center(
              child: TextButton(
                onPressed: () { controller.getImage(ImageSource.camera); },
                child: Text('Камера',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            width: 355.0,
            height: 56.0,
            decoration:  BoxDecoration(
              color: StColor.wBackGroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: TextButton(
                onPressed: () { Get.back(); },
                child: Text('Отмена',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],


      ),
    );
  }


}
/*                            Container(
                              width: 100,
                              child: Column(
                                children: <Widget> [
                                  TextButton(onPressed: (){}, child: Text('child1')),
                                  TextButton(onPressed: (){}, child: Text('child2')),
                                  TextButton(onPressed: (){}, child: Text('child3')),
                                ],


                              ),
                            ));*/
/*Container(
                                    width: 355.0,
                                    height: 56.0,
                                    decoration:  BoxDecoration(
                                      color: StColor.wBackGroundColor,
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular (16), topRight: Radius.circular (16) ),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                        onPressed: () { controller.getImage(ImageSource.gallery); },
                                        child: Text('Фотогалерея',
                                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3.0),

                                  Container(
                                    width: 355.0,
                                    height: 56.0,
                                    decoration:  BoxDecoration(
                                      color: StColor.wBackGroundColor,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular (16), bottomRight: Radius.circular (16) ),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                        onPressed: () { controller.getImage(ImageSource.camera); },
                                        child: Text('Камера',
                                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  Container(
                                    width: 355.0,
                                    height: 56.0,
                                    decoration:  BoxDecoration(
                                      color: StColor.wBackGroundColor,
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                        onPressed: () { Get.back(); },
                                        child: Text('Отмена',
                                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                        ),
                                      ),
                                    ),
                                  ),*/


/*Get.bottomSheet(Container(
                          child: Column(
                            children: [
                              TextButton(onPressed: (){}, child: Text('child1')),
                              TextButton(onPressed: (){}, child: Text('child2')),
                              TextButton(onPressed: (){}, child: Text('child3')),
                            ],
                          ),  //// (t_odo: Show Bottom Sheet)
                        ));*/
/* image: const DecorationImage(
                                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                                    fit: BoxFit.cover,
                                  ),*/
/*border: Border.all(
                                    color: Colors.black,
                                    width: 8,
                                  ),*/
//backgroundColor: StColor.gray1_Color,
/*

content: Column(
                              children: <Widget> [
                                Container(
                                  width: 355.0,
                                  height: 56.0,
                                  decoration:  BoxDecoration(
                                    color: StColor.wBackGroundColor,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular (16), topRight: Radius.circular (16) ),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () { controller.getImage(ImageSource.gallery); },
                                      child: Text('Фотогалерея',
                                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3.0),

                                Container(
                                  width: 355.0,
                                  height: 56.0,
                                  decoration:  BoxDecoration(
                                    color: StColor.wBackGroundColor,
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular (16), bottomRight: Radius.circular (16) ),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () { controller.getImage(ImageSource.camera); },
                                      child: Text('Камера',
                                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                Container(
                                  width: 355.0,
                                  height: 56.0,
                                  decoration:  BoxDecoration(
                                    color: StColor.wBackGroundColor,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () { Get.back(); },
                                      child: Text('Отмена',
                                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: StColor.blue6_Color),
                                      ),
                                    ),
                                  ),
                                ),
                              ],


                            )*/
