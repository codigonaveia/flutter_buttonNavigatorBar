import 'package:flutter/material.dart';
import 'NavegatorButton1.dart';
import 'navegator_butron2.dart';
import 'widgetTabbar.dart';
import 'stepper.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: NavegatorStapper(),
      //home: MyWidgetTabBar(),
    );
  }
}

//https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html