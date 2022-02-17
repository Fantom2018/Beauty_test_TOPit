

import 'package:beautician_app/getx_all/controllers/month_dd_menu_controller.dart';
import 'package:beautician_app/widgets/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MasterProfileScreen extends StatelessWidget {
  static const List _monthsName =[
    'Январь', 'Февраль', 'Март', 'Апрель', 'Май','Июнь','Июль','Август','Сентябрь','Ноябрь','Декабрь'
  ];
  late String _monthsVal;
  MonthController monthController = MonthController();
   MasterProfileScreen({Key? key}) : super(key: key);






  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(

          backgroundColor: Colors.white,
          title: const Text('Профиль',
            style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Medium', color: StColor.gray9_Color),),
          centerTitle: true,

          actions:  <Widget>[
            Text('Выйти',
                style: TextStyle(fontSize: 17, fontFamily: 'SF-Pro-Text-Regular', color: Color(0xFFE64646),
            ),
              textAlign: TextAlign.center,
            ),
          ],

        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
         child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12.0),
                height: 96,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                    boxShadow: const [
                      BoxShadow(blurStyle: BlurStyle.normal,
                          color: StColor.shadowColor,
                          blurRadius: 12.0,
                          offset: Offset(0, 2),
                          spreadRadius: 3.0),
                    ]
                ),

                child: Row(
                  children: [
                    Container(
                      width: 72, height: 72,padding: EdgeInsets.only(top: 23.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36.0),
                        color: StColor.blue_Color,
                      ),
                      child: Text(
                        'ЕИ',
                        style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800, color: Colors.white),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(width: 16.0),
                    Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Екатерина',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: Colors.black)
                          ),
                          Text('Иванова',
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600, color: Colors.black)
                          ),
                          Text('data',
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Colors.black87)
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Spacer(),
                    Container(
                      child: Icon(Icons.arrow_right),
                    )
                  ],
                ),
              ),
              SizedBox(height: 36.0),
              Container(
                padding: EdgeInsets.all(16.0),
                height: 418,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: const [
                      BoxShadow(blurStyle: BlurStyle.normal,
                          color: StColor.shadowColor,
                          blurRadius: 12.0,
                          offset: Offset(0, 2),
                          spreadRadius: 3.0),
                    ]
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                            'Расчет зарплаты за - Октябрь',
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        /*Obx( () => DropdownButton(
                          value:  _monthsVal,
                          onChanged: (newValue){
                            monthController.setSelected(newValue);
                          },
                            items: monthController._monthsName.map((selectedType) {
                              return DropdownMenuItem(
                              child: new Text(selectedType,),
                              value: selectedType,);
                            } ).toList(),
                          )),*/
                      ],
                    ),
                    SizedBox(height: 24.0),
                    Row(
                      children: [
                        Container(
                          width: 28, height: 28,
                          decoration: BoxDecoration(

                          ),
                        ),
                        SizedBox(width: 12.0,),
                        Text(
                          'Калькулятор',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),


                      ],
                    ),
                    SizedBox(height: 16.0),
                    SizedBox(height: 16.0),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Зарплата',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '31 182 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Начислено',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '10 000 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Осталось до цели',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '21 182 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0,),
                    SizedBox(height: 16.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Оказано услуг',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '20 982 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.0,),
                    SizedBox(height: 13.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Продано товаров',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '10 200 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 23.0,),
                    SizedBox(height: 23.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Премии',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '+ 500 ₽',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Штрафы',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '31 182 р',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                      ],
                    ),


                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

