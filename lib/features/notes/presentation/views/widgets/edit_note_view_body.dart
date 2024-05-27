import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/presentation/views/widgets/custom_app_bar.dart';
import 'package:notes_app/features/notes/presentation/views/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          const CustomAppBar(title: "Edit Note",icon:Icons.done ,),
          const SizedBox(height: 50,),
          CustomTextFormField(hintText: "Title",onSaved: (value){

          }),
          const SizedBox(height: 16,),
          CustomTextFormField(hintText: "Content",maxLines: 5,onSaved: (value){

          },),

        ],
      ),
    );
  }
}
