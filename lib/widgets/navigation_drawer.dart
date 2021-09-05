import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe

import 'dashboard/help_page.dart';
import 'dashboard/information.dart';
import 'dashboard/notifications.dart';
import 'dashboard/student_council.dart';
import 'dashboard/student_forums.dart';
import 'dashboard/student_mentorship.dart';
import 'dashboard/update_page.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Material(
          color: Colors.white,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  child: Text(
                    ' Dashboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                buildMenuItem(
                  text: "Information",
                  icon: Icons.info,
                  OnClicked: () => selectedItem(context, 0),
                ),
                SizedBox(
                  height: 5,
                ),
                buildMenuItem(
                  text: "Student Counselling",
                  icon: Icons.verified_user,
                  OnClicked: () => selectedItem(context, 1),
                ),
                buildMenuItem(
                  text: "Student Forums",
                  icon: Icons.forum,
                  OnClicked: () => selectedItem(context, 2),
                ),
                buildMenuItem(
                  text: "Quick Notification",
                  icon: Icons.notification_add,
                  OnClicked: () => selectedItem(context, 3),
                ),
                buildMenuItem(
                  text: "Help",
                  icon: Icons.help,
                  OnClicked: () => selectedItem(context, 4),
                ),
                buildMenuItem(
                  text: "Student Mentorship",
                  icon: Icons.perm_device_information,
                  OnClicked: () => selectedItem(context, 5),
                ),
                buildMenuItem(
                  text: "Updates",
                  icon: Icons.update,
                  OnClicked: () => selectedItem(context, 6),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    // ignore: non_constant_identifier_names
    VoidCallback? OnClicked,
  }) {
    final color = Colors.black;

    return new ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: new Card(
        color: Colors.white.withOpacity(1),
        elevation: 5.0,
        child: new Container(
          alignment: Alignment.bottomCenter,
          margin: new EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: new Text(text),
        ),
      ),
      onTap: OnClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    // Navigator.of(context).pop(); => if you want your navigation drawer to be closed when you click a page and want to come back
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => InformationPage(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StudentCounselling(),
        ));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StudentForum(),
        ));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuickNotification(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Help(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StudentMentorship(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Updates(),
        ));
        break;
    }
  }
}
