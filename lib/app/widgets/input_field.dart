import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
  });

  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(fontFamily: 'Inter'),
          ),
          const SizedBox(height: 8),
          TextField(
            onChanged: onChanged,
            controller: null,
            obscureText: isPassword,
            style: TextStyle(color: Colors.grey.shade800),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle:
                  const TextStyle(color: Colors.grey, fontFamily: 'Inter'),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
            ),
          ),
        ],
      ),
    );
  }
}
