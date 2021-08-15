import 'package:flutter/material.dart';
import 'package:note_kepper/note_details.dart';
import 'package:note_kepper/note_list.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NoteKeeper",
      home: NoteKeeper(),
    );
  }
}
