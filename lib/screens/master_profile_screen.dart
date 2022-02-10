

import 'package:flutter/material.dart';

class MasterProfileScreen extends StatelessWidget {
  const MasterProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(),
            SizedBox(height: 36.0),
            Column(
              children: <Widget>[
                Row(),
                Row(),
                Row(),

              ],
            )

          ],
        ),
      ),
    );
  }
}
