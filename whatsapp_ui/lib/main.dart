import 'package:flutter/material.dart';
import 'package:whatsapp_ui/views/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whats clone ui",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
      home: HomeScreen(),
    );
  }
}