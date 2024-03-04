
import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/common/utils.dart';
import 'package:firebase_project/notes/services/note_service.dart';
import 'package:flutter/material.dart';

import '../../common/custom_button.dart';

class EditNoteScreen extends StatefulWidget {
  static const String routeName = "/edit-note-screen";
  final String noteDescription;
  final String noteId;

  const EditNoteScreen(
      {super.key, required this.noteDescription, required this.noteId});

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final TextEditingController noteController = TextEditingController();
 final NoteService _noteService = NoteService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    noteController.text = widget.noteDescription;
  }

  void updateNote() {
    _noteService.updateNote(
      userID: FirebaseAuth.instance.currentUser!.uid,
        context: context,
        updatedNote: noteController.text,
        noteId: widget.noteId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Update note "),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              maxLines: 8,
              controller: noteController,
              decoration: const InputDecoration(
                  hintText: "write here", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(onTap: () {
              if(noteController.text.isNotEmpty){
                updateNote();
              }
              else{
                showSnackBar(context, "please enter all the field");
              }
            }, text: "Update note"),
          ],
        ),
      ),
    );
  }
}
