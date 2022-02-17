import 'package:beautician_app/widgets/color_constants.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/todo_for_day.dart';



class TodoMainScreen extends StatelessWidget {
  final title;
   TodoMainScreen({Key? key, this.title}) : super(key: key);
  String dropdownValue = 'Январь';
    final DatePickerController _controller = DatePickerController();
    DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var controller;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
            //padding: const EdgeInsets.symmetric(horizontal: 10.0,/* vertical: 30.0*/),
              decoration: BoxDecoration(color: StColor.wBackGroundColor,

                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                        spreadRadius: 3)
                  ]
              ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 8.0),
                /*Text(_selectedValue.toString(), style: TextStyle(color: StColor.blue6_Color)),
                Padding(
                  padding: EdgeInsets.all(3.0),
                ),*/
            Container(
                  child: DatePicker(

                    DateTime.now(),
                    width: 60,
                    height: 70,
                    controller: _controller,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: StColor.dColor,
                    monthTextStyle: const TextStyle(
                      fontSize: 11 ,
                      color: Colors.black,
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w400,
                    ),
                    dateTextStyle: TextStyle(
                      fontSize: 15,
                      color: StColor.gray9_Color,
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w400,
                    ),
                    dayTextStyle: const TextStyle(
                      fontSize: 11 ,
                      color: Colors.black45,
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w300,
                    ),
                    selectedTextColor: Colors.white,
                    locale:  "ru_RUS",
                    inactiveDates: [
                     // DateTime.now().add(Duration(days: 3)),
                     // DateTime.now().add(Duration(days: 4)),
                      DateTime.now().add(Duration(days: 7))
                    ],
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                  ),
                ), //"Calendar"
              ],
            ),
          ),
            SizedBox(height: 15.0),// "Polosa"

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      Container(

                      height: 84,
                      decoration: BoxDecoration(color: StColor.blue1_Color,
                          borderRadius: BorderRadius.circular(8.0),

                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '09:00 - 10:00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.blue6_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  Icon(CupertinoIcons.clock, size: 18,
                                    color: StColor.blue9_Color,),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Иванов Иван',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.halfOval,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Пиллинг Лицо',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.halfOval),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(

                      height: 84,
                      decoration: BoxDecoration(color: StColor.volcano1_Color,
                          borderRadius: BorderRadius.circular(8.0),
                         ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '11:00 - 12:00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.volcano5_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  Icon(CupertinoIcons.check_mark_circled, size: 18,
                                    color: StColor.volcano9_Color,),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Иванов Иван',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.halfOval,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'голени + бикини гл + подмышки',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.halfOval),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(

                      height: 84,
                      decoration: BoxDecoration(color: StColor.green1_Color,
                          borderRadius: BorderRadius.circular(8.0),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '12:30 - 13:30',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.green6_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  Icon(CupertinoIcons.minus_circle, size: 18,
                                    color: StColor.volcano9_Color,),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Иванов Иван',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.gray9_Color,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'голени + бикини гл + подмышки',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.gray8_Color),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                      height: 84,
                      decoration: BoxDecoration(color: StColor.purple1_Color,
                          borderRadius: BorderRadius.circular(15.0),
                          /*boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                                spreadRadius: 3)
                          ]*/
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '14:00 - 15:30',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.purple6_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  Icon(CupertinoIcons.clock, size: 18,
                                    color: StColor.purple9_Color,),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Иванов Иван',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.gray9_Color,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'Пиллинг Лицо',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.gray8_Color),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Container(
                      height: 84,
                      decoration: BoxDecoration(color: StColor.yellow1_Color,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                                spreadRadius: 3)
                          ]
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '15:30 - 17:00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.yellow7_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  Icon(CupertinoIcons.clock, size: 14,
                                    color: StColor.yellow9_Color,),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Иванов Иван',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.halfOval,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'голени + бикини гл + подмышки',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.halfOval),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                      height: 56,
                      decoration: BoxDecoration(color: StColor.gray1_Color,
                          borderRadius: BorderRadius.circular(8.0),
                         /* boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset(2, 2),
                                spreadRadius: 3)
                          ]*/
                      ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '18:00 - 19:30',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.gray9_Color,
                                        fontWeight:FontWeight.w400
                                    ),


                                  ),
                                  /*Icon(CupertinoIcons.clock, size: 14,
                                    color: StColor.volcano9_Color1,),*/
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Перерыв',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: StColor.halfOval,
                                      fontWeight: FontWeight.w600
                                    ),),
                                ],
                              ),
                             /* Row(
                                children: const [
                                  Text(
                                    'голени + бикини гл + подмышки',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: StColor.halfOval),),
                                ],
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ],
              ),
            ),

          ]
        ),
        bottomNavigationBar:  BottomNavigationBar(
          unselectedItemColor: Colors.black38,
          selectedItemColor: Colors.black,
          //onTap: controller.changeTabIndex,
          //currentIndex: controller.tabIndex,
          selectedFontSize:8.0,
          unselectedFontSize: 7.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(
              icon: CupertinoIcons.home,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.doc,
              label: 'News',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.person,
              label: 'Account',
            ),
          ],
        ),

      ),
    );
  }
  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
  void setState(Null Function() param0) {}
}
/*child: ListView(
              children: [Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 30),

                ],
              ),]
          ),*/
/*
            *  Row(
                  children: [
                    DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down, size: 40, color: Colors.black),
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900),
              underline: Container(
                  height: 0,
                  color: Colors.indigoAccent),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь' ]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
                    SizedBox(width: 240),
                    Icon(CupertinoIcons.bell_fill, size: 24,color: Colors.black,)
                  ],

                ),
            *
            *
            *
            * */
/*Column(
            children: [ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => Container(
                color: index % 2 == 0 ? Colors.white : Colors.blue[50],
                child: ListTile(
                  leading: Row(
                    children: const <Widget>[
                      Text(
                        'ID: 1',
                        style: TextStyle(
                          fontSize: 16 ,
                          fontWeight: FontWeight.bold,
                          color: StColor.mainColor,
                        ),
                      ),
                      Icon(CupertinoIcons.clock, size: 14, color: StColor.mainColor,),
                    ],
                  ),


                )))])*/

/*   title: Column(
                      children: <Widget>[
                        Text(
                          '${todoData[index].name}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Email: ${todoData[index].email}',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'Phone: ${todoData[index].phone}',
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ],
                    ),*//*
                ),
              ),
            ),]
          )*/