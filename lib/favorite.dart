import 'package:flutter/material.dart';

import 'model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
  
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  List<Robe> favoriteRobes = [];
  @override
  void initState() {
    super.initState();
    favoriteRobes = robes.where((robe) => robe.isFavorite).toList();
  }

  final List<Robe> robes = Robe.robes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          'Mes robes favorites', 
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: favoriteRobes.length,
        itemBuilder: (BuildContext context, int index) {
          final Robe robe = favoriteRobes[index];
          return ListTile(
            leading: Image.asset(
              robe.image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(robe.nom),
            subtitle: Text('€${robe.prix}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  robe.isFavorite = false;
                  favoriteRobes.remove(robe);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: () {
          setState(() {
            for (var robe in robes) {
              if (robe.isFavorite) {
                favoriteRobes.add(robe);
              } else {
                favoriteRobes.remove(robe);
              }
            }
          });
        },
      ),
    );
  }
}
