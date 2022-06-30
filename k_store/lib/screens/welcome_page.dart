// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';
import 'package:k_store/widgets/rounded_button.dart';

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
                      height: 600,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      // This allows the button to take the whole width
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 93, 12, 107),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Login');
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'Get Started',
                            style: BodyText,
                          ),
                        ),
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
