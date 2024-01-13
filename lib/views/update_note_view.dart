import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

import 'package:note_app/widgets/custom_update_note_form.dart';

class UpdateNoteView extends StatelessWidget {
  const UpdateNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Update Note',
                icon: Icon(
                  Icons.check,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomUpdateNoteForm(),
            ],
          ),
        ),
      ),
    );
  }
}
