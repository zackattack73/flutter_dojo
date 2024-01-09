import 'dart:convert';

import 'package:flutter_dojo/data/brick.dart';

List<Brick> getBrickSync() {
  String jsonString = '''[{
  "id": 6269141,
  "name": "MINI TOY DUCK, NO. 2",
  "category": "Figure Accessories In Hand"
  },
  {
  "id": 6467554,
  "name": "MINI HEAD, NO. 4248",
  "category": "Figure, Heads And Masks"
  },
  {
  "id": 6041396,
  "name": "ROUND BRICK 1X1, NO. 4",
  "category": "Bricks, Special Circles And Angles"
  },
  {
  "id": 6002768,
  "name": "MINI FIGURE HELMET, NO. 7",
  "category": "Figure, Head Clothing"
  },
  {
  "id": 6434808,
  "name": "BEAR, NO. 6",
  "category": "Animals And Creatures"
  },
  {
  "id": 6109940,
  "name": "FLAT TILE 2X2, NO. 254",
  "category": "Plates"
  }]''';
  return (json.decode(jsonString) as List).map((i) => Brick.fromJson(i)).toList();
}

// Use this in future_bricks_list_screen.dart only
Future<List<Brick>> getBrickAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return getBrickSync();
}
