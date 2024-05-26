import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'features/notes/presentation/views/notes_view.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) {
        return  const NotesApp();
      },
      ));
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        brightness: Brightness.dark,

      ),
      home: const NotesView(),

    );
  }
}
