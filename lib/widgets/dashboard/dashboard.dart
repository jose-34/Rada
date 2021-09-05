import 'package:flutter/material.dart';
import 'package:flutter_application_intro/widgets/navigation_drawer.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
    );
  }
}
