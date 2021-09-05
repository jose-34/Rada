import 'package:flutter/material.dart';

class QuickNotification extends StatelessWidget {
  const QuickNotification({Key? key}) : super(key: key);

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
