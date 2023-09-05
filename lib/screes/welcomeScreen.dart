import 'package:chat_app/Widgets/roundedButton.dart';
import 'package:chat_app/screes/loginScreen.dart';
import 'package:chat_app/screes/registrationScreen.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatefulWidget {
  static String id = 'welcomeScreen';

  @override
  _welcomeScreenState createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'images/logo.png',
                      height: 60,
                    )),
                const Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            roundedButton(
              Pressed: () {
                Navigator.pushNamed(context, loginScreen.id);
              },
              color: Colors.blueAccent,
              title: 'Log In',
            ),
            roundedButton(
              Pressed: () {
                Navigator.pushNamed(context, registrationScreen.id);
              },
              color: Colors.lightBlueAccent,
              title: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
