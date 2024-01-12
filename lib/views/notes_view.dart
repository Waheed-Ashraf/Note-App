import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custom_note_item.dart';
import 'package:note_app/widgets/floatting_action_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloattingActionButton(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(
                  title: 'Note App',
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  )),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return CustomNoteItem();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
