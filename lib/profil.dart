import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/login.dart';
import 'package:projet_vetements_miage/widgets/Custom_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {


  late TextEditingController _nomController;
  late TextEditingController _prenomController;
  late TextEditingController _emailController;
  late TextEditingController _motDePasseController;
  late TextEditingController _dateNaissanceController;
  late TextEditingController _loginController;
  late TextEditingController _codePostaleController;
  late TextEditingController _villeController;




  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final int _currentIndex = 3;


  @override
  void initState() {
    super.initState();
    _nomController = TextEditingController();
    _prenomController = TextEditingController();
    _emailController = TextEditingController();
    _motDePasseController = TextEditingController();
    _dateNaissanceController = TextEditingController();
    _loginController = TextEditingController();
    _codePostaleController = TextEditingController();
    _villeController = TextEditingController();

  }

void _enregistrerModifications() async {

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  await users.doc(_loginController.text).set({
    'nom': _nomController.text,
    'prenom': _prenomController.text,
    'email': _emailController.text,
    'motDePasse': _motDePasseController.text,
    'dateNaissance': _dateNaissanceController.text,
    'login': _loginController.text,
    'codePostal': _codePostaleController.text,
    'ville': _villeController.text,
  });
  // Affichez un message de confirmation
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Modifications enregistrées')),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
    
    currentIndex: _currentIndex,
  ),
      
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
       body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20),
        child: Form( // Ajout du widget Form ici
          key: _formKey,
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
          
              const SizedBox(height: 16.0),
          
                TextFormField(
                  controller: _nomController,
                  decoration: const InputDecoration(
                    labelText: 'Nom',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _prenomController,
                  decoration: const InputDecoration(
                    labelText: 'Prénom',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre prénom';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _villeController,
                  decoration: const InputDecoration(
                    labelText: 'Ville',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre ville';
                    }
                    return null;
                  },
                ),
          
               const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _loginController,
                  decoration: const InputDecoration(
                    labelText: 'Login',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre login';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _codePostaleController,
                  decoration: const InputDecoration(
                    labelText: 'Code Postal',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre code postal';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir votre email';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
              TextFormField(
                  controller: _motDePasseController,
                  decoration: const InputDecoration(
                    labelText: 'mot de passe ',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir votre mot de passe ';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 16.0),
          
                  TextFormField(
                  controller: _dateNaissanceController,
                  decoration: const InputDecoration(
                    labelText: 'Date de naissance ',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez saisir votre date de naissance ';
                    }
                    return null;
                  },
                ),
          
              const SizedBox(height: 36.0),
          
          
          
                         
          
                  Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Enregistrer les modifications
          
                    _enregistrerModifications(); // Appelez la fonction ici
          
            }
                  },
                  style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            minimumSize: const Size(150, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
                  ),
                  child: const Text('Enregistrer'),
                ),
                ElevatedButton(
                  onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
                  },
                  style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            minimumSize: const Size(200, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
                  ),
                  child: const Text('Se déconnecter'),
                ),
              ],
            ),
          ),
            ],
                  ),
          ),
      ),
    ),
    );
  }

  @override
  void dispose() {
    _nomController.dispose();
    _prenomController.dispose();
    _emailController.dispose();
    _motDePasseController.dispose();
    _dateNaissanceController.dispose();
    super.dispose();
  }
}
