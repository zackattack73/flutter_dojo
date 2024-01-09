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
      body: ListView.builder(
        itemCount: bricksList.length,
        itemBuilder: (context, index) {
          Brick currentBrick = bricksList[index];
          return Stack(
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
                    icon: Icon(
                      currentBrick.favorite ? Icons.favorite : Icons.favorite_border,
                      color: currentBrick.favorite ? Colors.pinkAccent : Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
