import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/widgets/custom_appbar.dart';

import 'package:note_app/widgets/custom_update_note_form.dart';
import 'package:note_app/models/note_model.dart';

class UpdateNoteView extends StatelessWidget {
  const UpdateNoteView({super.key, required this.note});
  final NoteModel note;
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
                icon: IconButton(
                  onPressed: () {
                    note.save();
                    Navigator.pop(context);
                    BlocProvider.of<NoteCubit>(context).fetchNotes();
                    // ignore: prefer_const_constructors
                    final snackBar = SnackBar(
                      content: const Text('Note updated'),
                      duration: const Duration(seconds: 4),
                      backgroundColor: Colors.green,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  icon: Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomUpdateNoteForm(noteModel: note),
            ],
          ),
        ),
      ),
    );
  }
}
