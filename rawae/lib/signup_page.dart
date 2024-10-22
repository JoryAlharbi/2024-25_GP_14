import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Firebase Auth
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // To handle image files

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

//here is where we handle the signup creating the signUpState function
// this function is async is usually used for time consuming task, for effiencay and it returns a Future
//A Future is a special type of object in Dart that represents the result of an asynchronous operation.
//When a Future is created, it's in a pending state. Once the operation completes, the Future is resolved
//with a value or an error.

class _SignUpPageState extends State<SignUpPage> {
  FirebaseAuth auth = FirebaseAuth.instance;

  void signUpAction() async {}

  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2835), // Dark background color
      body: Stack(
        children: [
          // Radial gradient background layer
          Positioned(
            top: 108, // Adjust Y position as needed
            left: -2, // Adjust X position as needed
            child: Container(
              width: 447,
              height: 803,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFA2DED0).withOpacity(0.2), // Light mint
                    const Color(0xFFD35400).withOpacity(0.2), // Orange
                    const Color(0xFFA2DED0).withOpacity(0.2), // Light mint
                  ],
                  radius: 1.5,
                  center: Alignment.topCenter,
                  stops: const [0.0, 0.7, 1.0],
                ),
                borderRadius: BorderRadius.circular(59),
              ),
            ),
          ),
          // Main content positioned in the center
          Align(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              widthFactor: 0.85,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Create. Collaborate. Inspire',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFA4A4A4),
                      ),
                    ),
                    const SizedBox(height: 25),
                    // Username Input
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFA4A4A4),
                          ),
                          prefixIcon: const Icon(Icons.person,
                              color: Color(0xFFA4A4A4)),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Email Input
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFA4A4A4),
                          ),
                          prefixIcon:
                              const Icon(Icons.email, color: Color(0xFFA4A4A4)),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password Input
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        obscureText: _isObscured,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFA4A4A4),
                          ),
                          prefixIcon:
                              const Icon(Icons.key, color: Color(0xFFA4A4A4)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: const Color(0xFFA4A4A4),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16.0),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    // Sign up Button
                    GestureDetector(
                      onTap: () {
                        // Add your sign-up logic here
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF344C64),
                              Color(0xFFD35400),
                              Color(0xFFA2DED0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'Sign up',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Log In Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFB6B6B6),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context,
                                '/login'); // Navigate back to LoginPage
                          },
                          child: Text(
                            'log in',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFD35400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
