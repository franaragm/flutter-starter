import 'package:flutter/material.dart';
import 'package:starter/screens/counter/counter.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (context) => CounterPage(),
  "/counter": (context) => CounterPage()
};
