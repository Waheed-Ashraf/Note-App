import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/update_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return UpdateNoteView(
              note: note,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(note.color),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 16),
                child: ListTile(
                  title: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      note.subtitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NoteCubit>(context).fetchNotes();
                    },
                    icon: Icon(
                      Icons.delete,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      note.date,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
