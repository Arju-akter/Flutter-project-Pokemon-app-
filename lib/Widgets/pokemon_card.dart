import 'package:flutter/material.dart';
import 'package:pokemon_1/pages/details_page.dart';
import 'power_badge.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final Map? pokemonMap;
  const PokemonCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.types,
    required this.pokemonMap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => DetailsPage(data: pokemonMap)),
        );
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 87, 144, 169),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Powerbadge(text: "${types[0]}"),
                  // Powerbadge(text: "${types[1]}"),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Hero(
              tag: "pokecard-${name}",
              child: Image.network(
                "$imageUrl",
                width: 100.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
