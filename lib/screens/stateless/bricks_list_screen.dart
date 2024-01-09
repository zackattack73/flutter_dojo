import 'package:flutter/material.dart';
import 'package:flutter_dojo/data/api.dart';
import 'package:flutter_dojo/data/brick.dart';

class BricksListScreen extends StatelessWidget {
  const BricksListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Brick> bricksList = getBrickSync();

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Flutter Dojo")),
      body: Text("TODO-1 : Use ListView.builder() HERE")
        // TODO-2 Use your widget from brick_screen inside the itemBuilder of the ListView
        // More info about ListView.builder : https://docs.flutter.dev/cookbook/lists/long-lists
    );
  }
}
