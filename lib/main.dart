import 'package:flutter/material.dart';
import 'package:flutter_dojo/screens/statefull/future_bricks_list_screen.dart';
import 'package:flutter_dojo/screens/stateless/brick_screen.dart';
import 'package:flutter_dojo/screens/statefull/brick_state_screen.dart';
import 'package:flutter_dojo/screens/stateless/bricks_list_screen.dart';
import 'package:flutter_dojo/screens/statefull/bricks_list_state_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
      BrickScreen()
      //BrickStateScreen()
      //BricksListScreen()
      //BricksListStateScreen()
      //FutureBricksList()
      );
  }
}
