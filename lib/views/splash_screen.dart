import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen
    Timer(
      const Duration(seconds: 2),
      () {
        // Navigate to the main screen after the delay
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const NotesView(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        'assets/images/notebook.png',
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      )),
    );
  }
}
