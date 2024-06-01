import 'dart:math';

import 'package:flutter/material.dart';

class ImageExplorerPage extends StatefulWidget {
  @override
  State<ImageExplorerPage> createState() => _ImageExplorerPageState();
}

class _ImageExplorerPageState extends State<ImageExplorerPage> {
  int index = 0;
  List<String> pokemon = [
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/289.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/286.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/285.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/284.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/283.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/017.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png",
    "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Explorer",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                    pokemon[index],
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              //child: Image.network(
              //pokemon[index],
              // fit: BoxFit.cover,
              //),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Mostrar SuperHeroe"),
                ),
                ElevatedButton(
                  onPressed: () {
                    index = Random().nextInt(10);
                    setState(() {});
                  },
                  child: Text("Siguiente"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
