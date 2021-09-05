import 'package:flutter/material.dart';
import 'package:flutter_application_intro/pallete.dart';
import 'package:flutter_application_intro/widgets/widgets.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
              color: kWhite,
            ),
            title: Text(
              "Forgot Password",
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.1),
                    Container(
                      width: size.width * 0.8,
                      child: Text(
                        "Enter Your Email Address We will send instructions  to reset your password",
                        style: kBodyText,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextInputField(
                      icon: FontAwesomeIcons.envelope,
                      hint: "Email",
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(buttonName: "Submit")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
