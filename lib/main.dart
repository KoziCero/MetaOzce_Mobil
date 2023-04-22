import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/favoriler_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/home_screen_bakan.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/otel_detail_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/feedback_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/home_screen_konak.dart';
import 'package:meta_ozce_0/Screens/Welcome/welcome_screen.dart';
import 'package:meta_ozce_0/Screens/WelcomeRobot/welcome_screen_robot.dart';
import 'package:meta_ozce_0/components/provider.dart';
import 'package:meta_ozce_0/constants.dart';

import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';
import 'package:meta_ozce_0/widgets/navigation_konak.dart';

import 'Screens/Oda_Kontrol/oda_kontrol.dart';
import 'Screens/Otel_Bakan/robot_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meta OzCe',
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: FutureBuilder(
        future: _initialization,
        builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
          if (asyncSnapshot.hasError) {
            return Center(
              child: Text('beklenmeyen hata'),
            );
          } else if (asyncSnapshot.hasData) {
            return WelcomeScreen();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ));
}
