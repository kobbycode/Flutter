// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';
import 'package:k_store/screens/login.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/sp.jpg'),
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: const Text(
                          'K-STORE',
                          style: Heading,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                    ),
                    RaisedButton(
                      padding: const EdgeInsets.only(
                        left: 100,
                        top: 20,
                        bottom: 20,
                        right: 100,
                      ),
                      color: const Color.fromARGB(255, 108, 19, 124),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        // Animation for Transition
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: const Duration(seconds: 1),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                // Animation Curve
                                animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.elasticInOut,
                                );
                                return ScaleTransition(
                                  alignment: Alignment.center,
                                  scale: animation,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return const Login();
                              },
                            ));
                      },
                      child: const Text(
                        'Get Started',
                        style: BodyText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
