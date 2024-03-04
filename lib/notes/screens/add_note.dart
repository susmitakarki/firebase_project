
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/common/custom_button.dart';
import 'package:firebase_project/common/utils.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../services/note_service.dart';

class AddNote extends StatefulWidget {
  static const String routeName="/add-note";
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final TextEditingController noteController = TextEditingController();
 final NoteService _noteService = NoteService();
 final noteId = const Uuid().v1();

  void addNote(){
   _noteService.addNotes(
     userID: FirebaseAuth.instance.currentUser!.uid,
     noteId: noteId,
     context: context,
     note: noteController.text,
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text( " Add note "),

     ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(maxLines: 8,
            controller: noteController,
              decoration:  const InputDecoration(
                hintText: "write here",
                border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: 10,),
            CustomButton(onTap:(){
              if(noteController.text.isNotEmpty){
                addNote();
              }
              else{
                showSnackBar(context, "please enter the note description");
              }
            }, text: "add note"),

          ],
        ),

      ),
    );
  }
}
