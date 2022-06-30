// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';
import 'package:k_store/screens/logout.dart';

import '../widgets/background_image.dart';
import '../widgets/input_email.dart';
import '../widgets/rounded_button.dart';
import '../widgets/passwor_input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  // In order to use the TextInput Widget in the future, I am giving a final property here

  @override
  Widget build(BuildContext context) {
    // I wrapped Background Image with column and replaced it with Stack to Stack other widgets ontop of each other
    return Stack(
      children: [
        const BackgroundImage(),
        // I created Scaffold Widget and the entire Screen becomes blank because the Scafold is on top of the Background Image
        Scaffold(
          // To fix scaffold being on top of Background Image, I set the background color to transparent.
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  // Heading is a style created in a different class
                  Container(
                    height: 110,
                    child: const Center(
                      child: Text(
                        'Kstore',
                        style: Heading,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 120,
                  ),

                  // Input Fields
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          // This put the texts in the column Widget at the end
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            TextInput(
                              icon: Icons.email,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: Icons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: BodyText,
                              ),
                            ),
                          ],
                        ),

                        // Column for button
                        Column(
                          children: [
                            SizedBox(
                              height: 102,
                            ),
                            RoundedButton(
                              buttonText: 'Login',
                            ),
                            SizedBox(
                              height: 75,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Container(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/SignUp');
                                  },
                                  child: Text(
                                    'Create an Account',
                                    style: BodyText,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
