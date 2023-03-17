import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/login.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:provider/provider.dart';





void main() {
  runApp(
    ChangeNotifierProvider<Panier>(
      create: (context) => Panier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
        
        
      


    );
  }

 

  
}
