import 'package:customer_delivery_system/home/main_item_page_dart.dart';
import 'package:flutter/material.dart';
import 'login/login.dart';
import 'login/register.dart';


void main() {
  runApp(const MyApp());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainItemPage(),
    );
  }
}


