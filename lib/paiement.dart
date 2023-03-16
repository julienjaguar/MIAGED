import 'package:flutter/material.dart';

import 'Facture.dart';

class PaiementScreen extends StatefulWidget {
  const PaiementScreen({super.key});

  @override
  State<PaiementScreen> createState() => _PaiementScreenState();
}


class _PaiementScreenState extends State<PaiementScreen> {
  String message = 'Paiement en cours...';
  bool showFactureButton = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        message = 'Paiement effectué';
        showFactureButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (showFactureButton)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),


                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FacturePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow, // Couleur d'arrière-plan
                    minimumSize: const Size(200, 50), // Largeur et hauteur minimales du bouton
                    textStyle: const TextStyle(fontSize: 20), // Taille du texte
                  ),
                  
                  child: const Text('Voir la facture', style: TextStyle(color: Colors.black26),),
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}