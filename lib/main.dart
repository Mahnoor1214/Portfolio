import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Pages/home-page.dart';
import 'package:portfolio/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Syeda Mahnoor Bukhari',
    home: HomePage());
//
  }
}
