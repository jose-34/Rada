import 'package:flutter/material.dart';

import '../widgets.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    drawer:
    NavigationDrawer();
    return Scaffold(
      appBar: AppBar(
        title: Text("Rada Information"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
