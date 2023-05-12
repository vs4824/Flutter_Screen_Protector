import 'package:flutter/material.dart';
import 'package:flutter_screen_protector/router/routes.dart';
import 'package:flutter_screen_protector/screen/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      onGenerateRoute: AppRouters.routes(),
    );
  }
}