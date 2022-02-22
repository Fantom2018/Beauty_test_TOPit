import 'package:get/get.dart';
//import 'package:mobile_cosm/screens/master_screens/masters_calculator.dart';
import '../screens/login_lk_screen.dart';
import '../screens/base_screen_todo.dart';
import '../screens/master_screens/master_personal_screen.dart';
import '../screens/master_screens/master_profile_screen.dart';
//import '../screens/session_screens/session_details.dart';
import 'app_routes.dart';



class AppPages {
  static const INITIAL = Routes.MASTER_PROFILE;

  static final routes = [
    GetPage(
      name: Routes.MAIN_TODO,
      page: () =>  TodoMainScreen(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const ProfileLoginScreen(),
    ),
    GetPage(
      name: Routes.MASTER_PROFILE,
      page: () => MasterProfileScreen(),
    ),
    GetPage(
      name: Routes.MASTER_PERSONAL,
      page: () => MasterPersonalScreen(),
    ),
   /* GetPage(
      name: Routes.MASTER_CALCULATOR,
      page: () => const MasterCalculatorScreen(),
    ),
    GetPage(
      name: Routes.sessionDetails,
      page: () => const SessionDetails(),
    ),*/


  ];
}