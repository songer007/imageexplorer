import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imagesexplorer/models/pokemon_model.dart';

class ImageExplorerPage extends StatefulWidget {
  @override
  State<ImageExplorerPage> createState() => _ImageExplorerPageState();
}

class _ImageExplorerPageState extends State<ImageExplorerPage> {
  int index = Random().nextInt(10);
  List<PokemonModel> pokemonList = [
    PokemonModel(
        name: "Slaking",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/289.png"),
    PokemonModel(
        name: "Breloom",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/286.png"),
    PokemonModel(
        name: "Shroomish",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/285.png"),
    PokemonModel(
        name: "Masquerain",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/284.png"),
    PokemonModel(
        name: "Surskit",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/283.png"),
    PokemonModel(
        name: "Charmander",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png"),
    PokemonModel(
        name: "Pikachu",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png"),
    PokemonModel(
        name: "Pidgeotto",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/017.png"),
    PokemonModel(
        name: "Squirtle",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png"),
    PokemonModel(
        name: "Bulbasaur",
        url:
            "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png")
  ];
  String PokeName = "";
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
                    pokemonList[index].url,
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
            Text(
              PokeName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    PokeName = pokemonList[index].name;
                    setState(() {});
                  },
                  child: Text("Mostrar SuperHeroe"),
                ),
                ElevatedButton(
                  onPressed: () {
                    index = Random().nextInt(10);
                    PokeName = "";
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
