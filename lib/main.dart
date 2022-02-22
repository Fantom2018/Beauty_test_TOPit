
import 'package:beautician_app/routs/pages_routs.dart';
import 'package:beautician_app/screens/login_lk_screen.dart';
import 'package:beautician_app/screens/master_screens/master_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:beautician_app/widgets/color_constants.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));

  /// Make sure you add this line here, so the plugin can access the native side
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
      title: "Beautician App",
     // themeMode: ThemeMode.light,

      theme: ThemeData().copyWith(
        primaryColor: Colors.white,
        //hintColor: Colors.blue,

      ),

      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(milliseconds: 230),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

    );
  }
}

/*
initialRoute: '/login_lk_screen',
getPages: [
GetPage(name: '/login_lk_screen', page: () =>  ProfileLoginScreen(),
//GetPage(name: '/master_profile_screen ', page: () =>  MasterProfileScreen(),
)]
*/






/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MasterProfileScreen(),
    );
  }
}*/


