import 'package:flutter/material.dart';

class StudentCounselling extends StatelessWidget {
  const StudentCounselling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peer Counsellers"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
