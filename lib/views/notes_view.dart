import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
