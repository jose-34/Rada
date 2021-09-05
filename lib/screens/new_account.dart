import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_intro/pallete.dart';
import 'package:flutter_application_intro/widgets/widgets.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(children: [
      Scaffold(
        body: Material(
          color: Colors.blueAccent,
          child: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "open sans semibold"),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: size.width * 0.1),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0.9),
                              Colors.white.withOpacity(0.9)
                            ],
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Column(
                      children: [
                        SizedBox(height: size.width * 0.2),
                        TextInputField(
                          icon: FontAwesomeIcons.user,
                          hint: "Registration Number",
                          inputType: TextInputType.name,
                          inputAction: TextInputAction.next,
                        ),
                        TextInputField(
                          icon: FontAwesomeIcons.envelope,
                          hint: "Email",
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInputField(
                          icon: FontAwesomeIcons.lock,
                          hint: "Password",
                          inputType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.next,
                        ),
                        PasswordInputField(
                          icon: FontAwesomeIcons.lock,
                          hint: "Confirm Password",
                          inputType: TextInputType.visiblePassword,
                          inputAction: TextInputAction.done,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RoundedButton(
                          buttonName: "Sign Up",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already Have An Account?",
                              style: kBodyText,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/");
                              },
                              child: Text(
                                "Login",
                                style: kBodyText.copyWith(
                                    color: kBlue, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
