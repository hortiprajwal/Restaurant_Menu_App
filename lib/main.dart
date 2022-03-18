import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
      ),
      home:  const HomePage(),
    );
  }
}


