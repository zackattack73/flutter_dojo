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

  @override
  void initState() {
    super.initState();
    currentBrick = getBrickSync()[0];
  }

  @override
  Widget build(BuildContext context) {
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
            child: Row(
              children: [
                Padding(padding: const EdgeInsets.all(2), child: Image.asset(currentBrick.getImgAssetName(), width: 150)),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(currentBrick.name.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Text(currentBrick.id.toString(), style: const TextStyle(fontStyle: FontStyle.italic)),
                      Text(currentBrick.category.toString()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    currentBrick.changeFavorite();
                  });
                },
                icon: Icon(
                  currentBrick.favorite ? Icons.favorite : Icons.favorite_border,
                  color: currentBrick.favorite ? Colors.pinkAccent : Colors.black,
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
