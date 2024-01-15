import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_note_item.dart';
import 'package:note_app/widgets/floatting_action_button.dart';
import 'package:note_app/widgets/notes_list.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloattingActionButton(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              CustomAppBar(
                  title: 'Note App',
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  )),
              const Expanded(
                child: NotsViewList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
