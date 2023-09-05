import 'package:chat_app/screes/chatScreen.dart';
import 'package:chat_app/screes/loginScreen.dart';
import 'package:chat_app/screes/registrationScreen.dart';
import 'package:chat_app/screes/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: welcomeScreen.id,
      routes: {
        loginScreen.id: (context) => loginScreen(),
        welcomeScreen.id: (context) => welcomeScreen(),
        registrationScreen.id: (context) => registrationScreen(),
        chatScreen.id: (context) => chatScreen(),
      },
    );
  }
}
