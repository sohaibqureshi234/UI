import 'package:flutter/material.dart';
import 'package:muslimdatingapp/views/screens/Convert/Revert.dart';
import 'package:muslimdatingapp/views/screens/DOBpopup.dart';
import 'package:muslimdatingapp/views/screens/Education.dart';
import 'package:muslimdatingapp/views/screens/HalalFood.dart';
import 'package:muslimdatingapp/views/screens/Height.dart';
import 'package:muslimdatingapp/views/screens/Proffession.dart';
import 'package:muslimdatingapp/views/screens/Religious.dart';
import 'package:muslimdatingapp/views/screens/Sect.dart';
import 'package:muslimdatingapp/views/screens/alcohol.dart';
import 'package:muslimdatingapp/views/screens/bio.dart';
import 'package:muslimdatingapp/views/screens/children.dart';
import 'package:muslimdatingapp/views/screens/gender.dart';
import 'package:muslimdatingapp/views/screens/marraige_horrizon.dart';
import 'package:muslimdatingapp/views/screens/martial_status.dart';
import 'package:muslimdatingapp/views/screens/nick_name.dart';
import 'package:muslimdatingapp/views/screens/photo_visibility.dart';
import 'package:muslimdatingapp/views/screens/prayer.dart';
import 'package:muslimdatingapp/views/screens/relocation.dart';
import 'package:muslimdatingapp/views/screens/smoke.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Relocation(),
    );
  }
}


