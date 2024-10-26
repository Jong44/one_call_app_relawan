import 'package:flutter/material.dart';
import 'package:one_call/app/config/color_config.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConfig.primaryColor,
              minimumSize: const Size(double.infinity, 60),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          child: child,
        ),
      ),
    );
  }
}

// Sign in with google, apple, or, facebook
class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.image,
  });

  final Image image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(18.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(64),
          border: Border.all(color: Colors.grey),
        ),
        child: image,
      ),
    );
  }
}
