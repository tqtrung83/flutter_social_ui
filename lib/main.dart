import 'package:flutter/material.dart';
import 'package:flutter_social_ui/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Social Media',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
//          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.blue)
      ),
      home: LoginScreen(),
    );
  }
}
