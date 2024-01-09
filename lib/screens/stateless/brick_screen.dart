import 'package:flutter/material.dart';
import 'package:flutter_dojo/data/api.dart';
import 'package:flutter_dojo/data/brick.dart';

class BrickScreen extends StatelessWidget {
  const BrickScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Brick currentBrick = getBrickSync()[0];

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Flutter Dojo")),
      body: Text("TODO : Replace Text() with your widget")
    );
  }
}
