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
    bool _showPassword = false;


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
                  
                   
                  ),
                ),



                const SizedBox(height: 20),



                 TextField(
                controller: _passwordController,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  labelText: 'Mot de passe',
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 76.0),

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
