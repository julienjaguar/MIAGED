import 'dart:math';
import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/home.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:provider/provider.dart';

class FacturePage extends StatelessWidget {
  const FacturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final panier = Provider.of<Panier>(context);
    final factureNumero = Random().nextInt(100000);

    double prixTotal = panier.articles.fold(0, (previousValue, robe) => previousValue + (robe.prix * robe.quantiteChoisie));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Facture'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
            child: Text(
              'Facture #$factureNumero',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: panier.articles.length,
              itemBuilder: (context, index) {
                final robe = panier.articles[index];
                return ListTile(
                  leading: Image.asset(
                    robe.image,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(robe.nom),
                  subtitle: Text(
                      'Taille: ${robe.tailleChoisie}, Quantité: ${robe.quantiteChoisie}, Prix: ${(robe.prix * robe.quantiteChoisie).toStringAsFixed(2)} €'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Prix total: ${prixTotal.toStringAsFixed(2)} €',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                minimumSize: const Size(200, 50),
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text('Revenir à l\'accueil'),
            ),
          ),
        ],
      ),
    );
  }
}
