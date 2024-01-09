import 'package:flutter/material.dart';
import 'package:flutter_dojo/data/api.dart';
import 'package:flutter_dojo/data/brick.dart';

class BricksListStateScreen extends StatefulWidget {
  const BricksListStateScreen({Key? key}) : super(key: key);

  @override
  _BricksListStateScreen createState() => _BricksListStateScreen();
}

class _BricksListStateScreen extends State<BricksListStateScreen> {
  late List<Brick> bricksList;

  // TODO-1 Use initState to instantiate bricksList

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Flutter Dojo")),
      body: Text("TODO-2 : Use ListView.builder() HERE")
      // TODO-3 Use your widget from brick_screen inside the itemBuilder of the ListView
      // TODO-4 Call changeFavorite() when user press the favorite icon
      // More info about ListView.builder : https://docs.flutter.dev/cookbook/lists/long-lists
      // More info about low-level state management : https://docs.flutter.dev/ui/interactivity
    );
  }
}
