import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/themes_cubit/themes_cubit.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/floatting_action_button.dart';
import 'package:note_app/widgets/notes_list.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloattingActionButton(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              CustomAppBar(
                  title: 'Note App',
                  icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<ThemesCubit>(context).toggleTheme();
                      setState(() {
                        isToggled = !isToggled;
                      });
                    },
                    padding: EdgeInsets.zero, // Remove padding

                    icon: Icon(
                      isToggled ? Icons.toggle_off : Icons.toggle_on,
                      size: 40.0,
                      color: Theme.of(context).colorScheme.secondary,
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
