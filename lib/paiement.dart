import 'package:flutter/material.dart';

class PaiementScreen extends StatefulWidget {
  const PaiementScreen({super.key});

  @override
  State<PaiementScreen> createState() => _PaiementScreenState();
}

class _PaiementScreenState extends State<PaiementScreen> {
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
      body: const Center(
        child: Text(
          'Paiement',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
