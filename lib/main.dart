import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projedonem/screens/logins_screen.dart';
import 'package:firebase_core/firebase_core.dart';




  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
  }



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),

      debugShowCheckedModeBanner: false,
    );
  }
}


