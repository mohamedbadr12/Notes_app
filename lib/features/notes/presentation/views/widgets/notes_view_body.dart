import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_search_icon.dart';

class NotesViewsBody extends StatelessWidget {
  const NotesViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
      child: Column(
        children: [
          CustomAppBar()

        ],
      ),
    );
  }
}
