import 'package:exam_one/audi_home.dart';
import 'package:exam_one/moody_screen.dart';
import 'package:exam_one/tab.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoodyScreen.routName,
      routes: {
        AudiHome.routName: (context) => AudiHome(),
        TabScreen.routName: (context) => TabScreen(),
        MoodyScreen.routName: (context) => MoodyScreen(),

      },
    );
  }
}
