import 'package:flutter/material.dart';
import 'package:flutter_dojo/data/api.dart';
import 'package:flutter_dojo/data/brick.dart';

class FutureBricksList extends StatefulWidget {
  const FutureBricksList({Key? key}) : super(key: key);

  @override
  _FutureBricksList createState() => _FutureBricksList();
}

class _FutureBricksList extends State<FutureBricksList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.green, title: const Text("Flutter Dojo")),
        body: Text("TODO-1 : Use a FutureBuilder<List<Brick>>() to get the brick from getBrickAsync()")
        // TODO-2 Show a CircularProgressIndicator() when the builder is loading
        // TODO-3 If there is no error and there is data, return the ListView.builder from bricks_list_state_screen.dart
        // More info about FutureBuilder : https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html
    );
  }
}
