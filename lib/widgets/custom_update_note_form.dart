import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class CustomUpdateNoteForm extends StatefulWidget {
  const CustomUpdateNoteForm({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<CustomUpdateNoteForm> createState() => _CustomUpdateNoteFormState();
}

class _CustomUpdateNoteFormState extends State<CustomUpdateNoteForm> {
  // String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            onChanged: (value) {
              widget.noteModel.title = value;
            },
            hint: widget.noteModel.title,
            maxLines: 1),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
            onChanged: (value) {
              widget.noteModel.subtitle = value;
            },
            hint: widget.noteModel.subtitle,
            maxLines: 5),
        const SizedBox(
          height: 16,
        ),
        Image.asset(
          'assets/images/diary.png',
          width: 210,
          height: 210,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
