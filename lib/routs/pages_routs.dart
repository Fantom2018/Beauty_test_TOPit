

import 'package:get/get.dart';
import '../core.dart';
import '../screens/login_lk_screen.dart';
import '../screens/master_profile_screen.dart';
import '../screens/base_screen_todo.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: Routes.MAIN_TODO,
      page: () =>  TodoMainScreen(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => MasterProfileScreen(),
    ),

    GetPage(
      name: Routes.LOGIN,
      page: () => const ProfileLoginScreen(),
    ),
  ];
}