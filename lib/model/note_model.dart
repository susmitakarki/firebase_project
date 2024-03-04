// To parse this JSON data, do
//
//     final noteModel = noteModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<NoteModel> noteModelFromJson(String str) => List<NoteModel>.from(json.decode(str).map((x) => NoteModel.fromJson(x)));

String noteModelToJson(List<NoteModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NoteModel {
  final String userid;
  final String note;
  final String noteId;

  NoteModel({
    required this.userid,
    required this.note,
    required this.noteId,
  });

  NoteModel copyWith({
    String? userid,
    String? note,
    String? noteId,
  }) =>
      NoteModel(
        userid: userid ?? this.userid,
        note: note ?? this.note,
        noteId: noteId ?? this.noteId,
      );

  factory NoteModel.fromJson(Map<String, dynamic> json) => NoteModel(
    userid: json["userid"],
    note: json["note"],
    noteId: json["noteId"],
  );

  Map<String, dynamic> toJson() => {
    "userid": userid,
    "note": note,
    "noteId": noteId,
  };
}
