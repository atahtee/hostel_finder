import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInScreen extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const SignInScreen({super.key, required this.onClickedSignUp});

  @override
  State<SignInScreen> createState() => _HostelFinderSignInScreenState();
}

class _HostelFinderSignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Hostel Finder',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[800],
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Please sign in to continue',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                controller: emailController,
                cursorColor: Colors.deepPurple,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.deepPurple[800],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: passwordController,
                cursorColor: Colors.deepPurple,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepPurple[800],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: signIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[800],
                  minimumSize: const Size.fromHeight(50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16.0,
                    ),
                    text: 'Don\'t have an account? ',
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickedSignUp,
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Colors.deepPurple[800],
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}