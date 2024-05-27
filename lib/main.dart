import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/core/utils/constant.dart';
import 'package:notes_app/features/notes/data/model/note_model.dart';
import 'features/notes/presentation/views/notes_view.dart';

void main() async {

  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',

      ),
      home: const NotesView(),

    );
  }
}
