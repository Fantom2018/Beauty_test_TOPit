

import 'package:get/get.dart';
import '../core.dart';
import '../screens/login_lk_screen.dart';
import '../screens/master_profile_screen.dart';
import '../screens/todo_main_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.TODO_MAIN,
      page: () => const TodoMainScreen(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => const MasterProfileScreen(),
    ),

    GetPage(
      name: Routes.LOGIN,
      page: () => const ProfileLoginScreen(),
    ),
  ];
}