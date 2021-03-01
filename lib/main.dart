import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinterest_clone/screens/main_body.dart';

void main() => runApp(MyApp());

// Hello there commit from github
// Hell there commit from vscode

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
    ));
    return MaterialApp(
      title: 'Pinterest Clone',
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MainBody(),
    );
  }
}
