import 'package:flutter/material.dart';
import 'package:projet_vetements_miage/login.dart';
import 'package:projet_vetements_miage/product.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import "package:firebase_core/firebase_core.dart";

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized(); // execution une fois que l app est lancée
  await Firebase.initializeApp();
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
