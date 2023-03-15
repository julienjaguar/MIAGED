import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/login.dart';


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            const SizedBox(height: 16.0),
            TextFormField(
              controller: _nomController,
              decoration: const InputDecoration(
                labelText: 'Nom',
              ),
            ),

            const SizedBox(height: 16.0),

          
            TextFormField(
              controller: _prenomController,
              decoration: const InputDecoration(
                labelText: 'Prénom',
              ),
            ),

            const SizedBox(height: 16.0),

            TextFormField(
              controller: _villeController,
              decoration: const InputDecoration(
                labelText: 'Ville',
              ),
            ),

             const SizedBox(height: 16.0),

            TextFormField(
              controller: _loginController,
              decoration: const InputDecoration(
                labelText: 'Login',
              ),
            ),

            const SizedBox(height: 16.0),

            TextFormField(
              controller: _codePostaleController,
              decoration: const InputDecoration(
                labelText: 'Code Postal',
              ),
            ),

            const SizedBox(height: 16.0),

            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),

            const SizedBox(height: 16.0),

            TextFormField(
              controller: _motDePasseController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Mot de passe',
              ),
            ),

            const SizedBox(height: 16.0),

            TextFormField(
              controller: _dateNaissanceController,
              decoration: const InputDecoration(
                labelText: 'Date de naissance',
              ),
            ),

            const SizedBox(height: 36.0),


           Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [



      ElevatedButton(
        onPressed: () {
          // Enregistrer les modifications
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, backgroundColor: Colors.yellow,
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
