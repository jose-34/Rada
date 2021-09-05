import 'package:flutter/material.dart';

class StudentForum extends StatelessWidget {
  const StudentForum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forums"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
