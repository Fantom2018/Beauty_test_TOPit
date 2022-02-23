
import 'package:get/get.dart';

class MonthController extends GetxController {

  // It is mandatory initialize with one value from listType
  final selected = "some month type".obs;

  var _monthsName;


  void setSelected(dynamic value){
    selected.value = value;
  }

} 