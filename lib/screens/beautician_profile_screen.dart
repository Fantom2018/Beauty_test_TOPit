import 'package:flutter/material.dart';

class BeauticianProfile extends StatefulWidget {
  const BeauticianProfile({Key? key}) : super(key: key);

  @override
  _BeauticianProfileState createState() => _BeauticianProfileState();
}

class _BeauticianProfileState extends State<BeauticianProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  //_auth.signOut();
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
