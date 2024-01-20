// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gmail_settings_ui/Pages/settings_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsPage(),
      routes: {
        '/settings':(context) => SettingsPage(),
      },
    );
  }
}