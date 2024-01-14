import 'package:bloc/bloc.dart';


import 'package:hive/hive.dart';


import 'package:meta/meta.dart';


import 'package:note_app/constants.dart';


import 'package:note_app/models/note_model.dart';


part 'note_state.dart';


class NoteCubit extends Cubit<NoteState> {

  NoteCubit() : super(NoteInitial());


  fetchNotes() {

    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);


    List<NoteModel> notes = noteBox.values.toList();


    return notes;

  }

}

