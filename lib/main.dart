//import 'package:chatapp/landing/Landing_Screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/landing/landing_screan.dart';
// import 'package:whatsapp/WhatsApp_Home.dart';
// import 'package:whatsapp/landing/Landing_Screan.dart';

main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      debugShowCheckedModeBanner: false,
      home: LandingScrean(),
    );
  }
}
