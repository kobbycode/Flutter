// Password TextInput
import 'package:flutter/material.dart';
import 'package:k_store/pallet.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    // I created Constructors
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(
            0.5,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white70,
                size: 30,
              ),
            ),
            hintStyle: BodyText,
          ),
          obscureText: true,
          style: BodyText,
          // By adding textInputAction and setting it to next, the keyboard adds next button to the keyboard
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
