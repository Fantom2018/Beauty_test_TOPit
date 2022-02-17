/*import 'package:beautician_app/widgets/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  get todoData => null;

  @override
  Widget build(BuildContext context) {


          return ListView.builder(
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

              ),
            ),
          );*/
 // *************

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
                ),*/

 //********


/// ${todoData[index].id}
        /*if (state is UserErrorState) {
          return Center(
            child: Text(
              'Error fetching users',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }
        return SizedBox.shrink();
      },

  }
}
*/
/*
* return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return Center(
            child: Text(
              'No data received. Press button "Load"',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        if (state is UserLoadingState) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is UserLoadedState) {*/