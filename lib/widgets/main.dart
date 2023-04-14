import 'package:flutter/material.dart';
import 'package:yigi/login/login.dart';

import '../login/const.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: TextTheme(
            displaySmall: TextStyle(
                color: Colors.amber
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white )))
      ),
      home: Hosgeldin(),
    );
  }
}
