import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/product.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
               
                const Text(
                  'MIAGED',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 50),
                

                const SizedBox(height: 20),
                const Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Mot de passe',
                  style: TextStyle(
                    
                    color: Colors.blue,

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mot de passe',
                  ),
                ),
                
                const SizedBox(height: 50),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                   style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(200, 50)),
  ),
                  child: const Text('Se connecter'),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    ); // ajoutez une parenthèse fermante à la fin de cette ligne
  }
}
