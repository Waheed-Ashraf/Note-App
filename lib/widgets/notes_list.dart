import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotsViewList extends StatelessWidget {
  const NotsViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> note = BlocProvider.of<NoteCubit>(context).fetchNotes();
        return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: note.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(note[index].subtitle),
                background: Container(
                  height: 20,
                  // color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: Icon(
                    Icons.delete,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                onDismissed: (direction) {
                  BlocProvider.of<NoteCubit>(context).deleteNote(note[index]);
                },
                child: CustomNoteItem(
                  note: note[index],
                ),
              );
            });
      },
    );
  }
}
