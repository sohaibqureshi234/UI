import 'package:flutter/material.dart';
import 'package:muslimdatingapp/Message/Messages.dart';
import 'package:muslimdatingapp/views/screens/Convert/Revert.dart';
import 'package:muslimdatingapp/views/screens/DOBpopup.dart';
import 'package:muslimdatingapp/views/screens/Edit%20Profile/Edit_Profile.dart';
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
import 'package:muslimdatingapp/views/screens/module%20two/2nd%20screen/Profile%20progress/profile_progress.dart';
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

        primarySwatch: Colors.blue,
      ),
      home: ChatPage(),
    );
  }
}


