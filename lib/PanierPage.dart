import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:provider/provider.dart';

class PanierPage extends StatelessWidget {
  const PanierPage({super.key});

  @override
  Widget build(BuildContext context) {
    final panier = Provider.of<Panier>(context);

   double montantTotal() {
  double total = 0;
  for (var article in panier.articles) {
    total += article.prix * article.quantiteChoisie; // Utiliser quantiteChoisie ici
  }
  return total;
}

    

    return Scaffold(
      appBar: AppBar(title: const Text('Panier')),
      body: Column(
        children: [
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

                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => panier.supprimerArticle(robe),
                  ),
                );
              },
            ),
          ),


          Container(
            padding: const EdgeInsets.all(70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ${montantTotal().toStringAsFixed(2)} €',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.yellow, // Changer la couleur du texte en noir
                  ),
                  child: const Text('Payer'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
