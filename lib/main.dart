import 'package:counter_with_navigation_of_context/ui/screen_go_next.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // ^4.6.5


void main() => runApp(GetMaterialApp(
  // debugShowCheckedModeBanner: false, // per non mostrare "debug"
  theme: ThemeData (primarySwatch: Colors.indigo),
  home: Screen1(), // necessario
));
