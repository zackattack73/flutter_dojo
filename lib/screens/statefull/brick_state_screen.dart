import 'package:flutter/material.dart';
import 'package:flutter_dojo/data/api.dart';
import 'package:flutter_dojo/data/brick.dart';

class BrickStateScreen extends StatefulWidget {
  const BrickStateScreen({Key? key}) : super(key: key);

  @override
  _BrickStateScreen createState() => _BrickStateScreen();
}

class _BrickStateScreen extends State<BrickStateScreen> {
  late Brick currentBrick;

  // TODO-1 Use initState to instantiate currentBrick

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text("Flutter Dojo")),
      body: Text("TODO-2 : Use your widget from brick_screen")
      // TODO-3 Call changeFavorite() when user press the favorite icon
      // More info about low-level state management : https://docs.flutter.dev/ui/interactivity
    );
  }
}
