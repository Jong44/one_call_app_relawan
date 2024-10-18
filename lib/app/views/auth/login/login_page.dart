import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_call_login_register/app/widgets/LoginPage/button.dart';
import 'package:one_call_login_register/app/widgets/LoginPage/input_field.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // logo
                const SizedBox(height: 82),
                Center(child: SvgPicture.asset('assets/images/logo.svg')),
                // tab bar
                const SizedBox(height: 50),
                // F O R M
                //email
                const InputField(
                    labelText: 'Email Address', hintText: 'Your email'),
                const SizedBox(height: 25),
                //password
                const InputField(labelText: 'Password', hintText: 'Password'),
                // Forgot password
                TextButton(
                    onPressed: () {}, child: const Text('Forgot Password?')),
                //Sign in button
                const SizedBox(height: 50),
                SubmitButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                ),

                // other sign in options
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Center(
                    child: Text(
                      'Other sign in options',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                ),
                // other auth sign in button
                Center(
                  child: SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Facebook Auth Login
                        AuthButton(
                          image: Image.asset(
                            'assets/images/fb.png',
                            scale: 0.8,
                          ),
                        ),
                        // Google Auth Login
                        AuthButton(
                          image: Image.asset(
                            'assets/images/google.png',
                            scale: 0.8,
                          ),
                        ),
                        // Apple Auth Login
                        AuthButton(
                          image: Image.asset(
                            'assets/images/apple.png',
                            scale: 0.8,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
