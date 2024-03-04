
import 'package:firebase_project/auth/screen/login_screen.dart';
import 'package:firebase_project/bottonbar/botton_bar.dart';
import 'package:flutter/material.dart';

import 'notes/screens/add_note.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => const HomeScreen()
      );




    case AddNote.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  AddNote()
      );

      case BottonBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  BottonBar()
      );
    //
    // case EditNoteScreen.routeName:
    //   final arguments = routeSettings.arguments as Map<String, dynamic>;
    //   final noteDescription = arguments["noteDescription"];
    //   final noteId = arguments["noteId"];
    //   return MaterialPageRoute(
    //       settings: routeSettings, builder: (_) =>  EditNoteScreen(noteDescription: noteDescription, noteId: noteId)
    //   );



    default:
      return MaterialPageRoute(
        settings: routeSettings, builder: (_) => const Scaffold(
        body: Center(
          child: Text("Screen doesn't exist"),
        ),
      ),
      );
  }
}