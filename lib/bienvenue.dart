import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/home.dart';

class BienvenueScreen extends StatefulWidget {
  const BienvenueScreen({Key? key}) : super(key: key);

  @override
  State<BienvenueScreen> createState() => _BienvenueScreenState();
}

class _BienvenueScreenState extends State<BienvenueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        
        child: ElevatedButton(
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow, // Change la couleur de fond en jaune
            minimumSize: const Size(200, 60), // Définit la taille minimale du bouton
          ),
          child: const Text('Tester MIAGED'),
        ),
      ),
    );
  }
}
