import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_intro/widgets/widgets.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'screens/screens.dart';
import 'package:flutter/widgets.dart';

import 'widgets/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'RADA MMUST',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
      ),

      initialRoute: '/',

      routes: {
        '/': (context) => LoginScreen(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'NavigationDrawer': (context) => NavigationDrawer(),
        'DrawerMenu': (context) => DrawerMenu(),
      },
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("RADA MMUST"),
      //   ),
      // ),
    );
  }
}
