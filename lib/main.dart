import 'package:flutter/material.dart';
import 'package:note_app/theme/dark_theme.dart';
import 'package:note_app/theme/light_theme.dart';
import 'package:note_app/views/notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMood,
      home: const NotesView(),
    );
  }
}
