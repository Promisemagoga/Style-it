import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:firebase_core/firebase_core.dart';

 Future main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: const FirebaseOptions(
   apiKey: "AIzaSyAgNzFLD8lv5gMLHeLwizEHcRhBqOiR7m4",
  authDomain: "lets-style-it.firebaseapp.com",
  projectId: "lets-style-it",
  storageBucket: "lets-style-it.appspot.com",
  messagingSenderId: "222828959656",
  appId: "1:222828959656:web:c5883b6ee0be8f08406f9d",
  measurementId: "G-9LWPL430NE"),
);


 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LETS STYLE IT',
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: AnimatedSplashScreen(
          splash: 'Assets/Images/R.gif',
          nextScreen: Dashboard(),
          splashTransition: SplashTransition.sizeTransition,
          duration: 3000,
          backgroundColor: Colors.white,
        ),
        );
  }
}
