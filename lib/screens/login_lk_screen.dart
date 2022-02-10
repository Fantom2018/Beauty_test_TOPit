import 'package:beautician_app/widgets/color_constants.dart';
import 'package:beautician_app/widgets/constants.dart';
import 'package:beautician_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'beautician_profile_screen.dart';
import 'package:get/get.dart';


class ProfileLoginScreen extends StatelessWidget {

  const ProfileLoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 34.0,
                height: 34.0,
                decoration: BoxDecoration(
                  color:  StColor.lColor1.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(17.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                width: 50.0,
                height: 22.0,
                decoration: BoxDecoration(
                  color:  StColor.lColor1,
                  borderRadius: BorderRadius.circular(11.0),
                ),
              ),
              const SizedBox(height: 22.0),
              const Text(
                "Личный кабинет",
                style: TextStyle(
                  fontFamily: 'SF',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "Укажите номер телефона и пароль",
                style: TextStyle(
                  fontFamily: 'SF',
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: StColor.sfColor,
                ),
              ),
              const SizedBox(height: 36.0),

              TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  var phone =value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Телефон', ),
                style: TextStyle(color: StColor.mainColor),
                        //hintStyle: Colors.accents
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  ///password =value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              const SizedBox(height: 36.0),
              TextButton(onPressed: (){},
                  child: Text('Забыли пароль?', style: TextStyle(
                    fontFamily: 'SF',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: StColor.sfColorb,
                  ),)),
              const SizedBox(height: 36.0),
              RoundedButton(
                  title: 'Войти', colour: StColor.batColor,
                  onPressed: () {}),
            ],
          ),
        ),

      ),
    );
  }
}




  //final FirebaseAuth _auth = FirebaseAuth.instance;
/*
  TextFormField(
              keyboardType: TextInputType.phone,
            ),

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 100.0,
                //child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(

              textAlign: TextAlign.center,
              onChanged: (value) {
                email =value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your sell phone number'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password =value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(title: 'Log in', colour: Colors.blueAccent,
                onPressed: () async {



try{
                    //final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                    if (user !=null){
                      //Navigator.pushNamed(context, BeauticianProfile.id);
                    }
                  }catch(e){
                    print(e);
                  };
            }),
          ],
        ),
      ),
    );
  }
}*/
