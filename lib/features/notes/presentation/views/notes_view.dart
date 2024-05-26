import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/features/notes/presentation/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,
        onPressed: (){
        showModalBottomSheet(context: context, builder: (context) {
          return const AddNoteBottomSheet();
        },);
        },child: const Icon(Icons.add),),
      body: const NotesViewsBody(),

    );
  }
}
