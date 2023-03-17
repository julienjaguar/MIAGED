import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signIn() async {
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  } on FirebaseAuthException catch (e) {
    String? errorMessage;
    if (e.code == 'user-not-found') {
      errorMessage = "Aucun utilisateur trouvé avec cette adresse e-mail.";
    } else if (e.code == 'wrong-password') {
      errorMessage = "Mot de passe incorrect.";
    } else {
      errorMessage = e.message;
    }
    if (kDebugMode) {
      print(errorMessage);
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(errorMessage!)),
    );
  }
}

  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const Text(
                  'MIAGED',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60),


                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(

                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.yellow),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),



                const SizedBox(height: 20),



                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Mot de passe',
                    labelStyle: TextStyle(color: Colors.yellow),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 40),


                ElevatedButton(
                  onPressed: _signIn,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 50, vertical: 12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  ),
                  child: const Text(
                    'Se connecter',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
