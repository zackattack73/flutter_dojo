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
      body: Stack(
        children: [
          Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 3.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(children: [
                Padding(padding: const EdgeInsets.all(2), child: Image.network(currentBrick.getImgUrl(), width: 150)),
                Flexible(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(currentBrick.name.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(currentBrick.id.toString(), style: const TextStyle(fontStyle: FontStyle.italic)),
                    Text(currentBrick.category.toString())
                  ],
                ))
              ])),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
