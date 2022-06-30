// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // This allows the button to take the whole width
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 93, 12, 107),
        borderRadius: BorderRadius.circular(16),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            buttonText,
            style: BodyText,
          ),
        ),
      ),
    );
  }
}
