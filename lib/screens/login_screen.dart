import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_intro/pallete.dart';
import 'package:flutter_application_intro/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Column(
            children: [
              Center(
                child: Text(
                  "Login",
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
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.9),
                      Colors.white.withOpacity(0.9)
                    ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: size.width * 0.08),
                    TextInputField(
                      icon: Icons.person,
                      hint: "Registratiion Number",
                      inputAction: TextInputAction.next,
                      inputType: TextInputType.text,
                    ),
                    TextInputField(
                      icon: Icons.email,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInputField(
                      icon: FontAwesomeIcons.key,
                      hint: "Password",
                      inputType: TextInputType.visiblePassword,
                      inputAction: TextInputAction.next,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "ForgotPassword");
                          },
                          child: Text(
                            "Click here",
                            style: kBodyText.copyWith(
                              color: kBlue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: "Login"),
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
                          onTap: () =>
                              Navigator.pushNamed(context, 'CreateNewAccount'),
                          child: Container(
                            child: Text(
                              "Sign Up",
                              style: kBodyText.copyWith(
                                  color: kBlue, fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 1, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.195,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
