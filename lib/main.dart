import 'package:flutter/material.dart';
import 'package:whatsapp_ui/LogIn/enterNumber.dart';
import 'package:whatsapp_ui/whatsappAppBar.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterNumber(),
    );
  }
}

