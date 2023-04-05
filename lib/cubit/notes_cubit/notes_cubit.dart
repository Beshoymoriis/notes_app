import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesList;

  fetchNoteList() {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notesList = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
