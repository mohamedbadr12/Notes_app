import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/notes/presentation/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: (){
      Navigator.push(context,MaterialPageRoute(builder: (context) => const EditNoteView(),));
    },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),

        ),
        child:  Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutter Tips",style: TextStyle(color: Colors.black,fontSize: 28),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text("Build Your Career with Mohamed Badr",style: TextStyle(color: Colors.black.withOpacity(.5),fontSize:18),),
              ),
              trailing:IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16,top: 16),
              child: Text("May 20, 2022",style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
            ),
          ],
        ),

      ),
    );
  }
}
