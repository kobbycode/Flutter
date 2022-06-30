// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';
import 'package:k_store/widgets/input_email.dart';
import 'package:k_store/widgets/passwor_input.dart';
import 'package:k_store/widgets/rounded_button.dart';
import 'package:k_store/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width: 120,
                        child: Text(
                          'K-STORE',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 143, 11, 148),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[600]?.withOpacity(0.5),
                      radius: 45,
                      child: Icon(
                        Icons.supervised_user_circle_outlined,
                        size: 70,
                        color: Color.fromARGB(117, 143, 11, 148),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      child: TextInput(
                        icon: Icons.supervised_user_circle,
                        hint: 'First Name',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      child: TextInput(
                        icon: Icons.supervised_user_circle_rounded,
                        hint: 'Second Name',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      child: PasswordInput(
                        icon: Icons.lock,
                        hint: 'Password',
                        inputAction: TextInputAction.next,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      child: PasswordInput(
                        icon: Icons.lock,
                        hint: 'Confirm Password',
                        inputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55),
                        child: Container(
                          child: RoundedButton(buttonText: 'Register'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have Account?',
                            style: BodyText,
                          ),
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Login');
                            },
                            child: Text(
                              'Login',
                              style: BodyText,
                            ),
                          ),
                        ],
                      ),
                    ],
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
