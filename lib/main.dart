import 'package:flutter/material.dart';
import 'package:curify/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {'welcome_screen': (context) => MyLogin()}
  )
  );
}