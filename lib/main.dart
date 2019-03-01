import 'package:flutter/material.dart';
import 'package:starter/routes.dart';

void main() => runApp(StarterApp());

class StarterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
    );
  }
}
