import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';
import 'signup_page.dart';
//import 'homepage.dart'; // Import the correct HomePage file
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),

        //HomePage(), // Ensure this matches the home page file
      },
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Duration for one full circle
      vsync: this,
    )..repeat(); // Repeat the animation to create continuous motion
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B2835),
      body: Stack(
        children: [
          // Ellipse 1 (Top-left) with circular movement
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double angle = _controller.value * 2 * math.pi;
              double radius = 10; // Adjust radius for the size of the circle

              double x = radius * math.cos(angle);
              double y = radius * math.sin(angle);

              return Positioned(
                top: -290 + y,
                left: -244 + x,
                child: child!,
              );
            },
            child: Container(
              width: 650, // Width matching the Figma design
              height: 650, // Height matching the Figma design
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFD35400)
                        .withOpacity(0.26), // Orange with adjusted opacity
                    const Color(0xFFA2DED0)
                        .withOpacity(0.0), // Transparent mint
                  ],
                  stops: const [0.0, 1.0], // Smooth transition
                  radius: 0.3, // Control the spread
                ),
              ),
            ),
          ),

          // Ellipse 2 (Center-right) with circular movement
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double angle = _controller.value * 2 * math.pi;
              double radius = 20; // Adjust radius for the size of the circle

              double x = radius * math.cos(angle);
              double y = radius * math.sin(angle);

              return Positioned(
                top: 5 + y,
                right: -320 + x,
                child: child!,
              );
            },
            child: Container(
              width: 650, // Width matching the Figma design
              height: 650, // Height matching the Figma design
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF344C64)
                        .withOpacity(0.58), // Dark blue with adjusted opacity
                    const Color(0xFFD35400)
                        .withOpacity(0.0), // Transparent orange
                  ],
                  stops: const [0.0, 1.0],
                  radius: 0.3,
                ),
              ),
            ),
          ),

          // Ellipse 3 (Bottom-center) with circular movement
          /* AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              double angle = _controller.value * 2 * math.pi;
              double radius = 15; // Adjust radius for the size of the circle

              double x = radius * math.cos(angle);
              double y = radius * math.sin(angle);

              return Positioned(
                bottom: -160 + y,
                left: 50 + x,
                child: child!,
              );
            },
            child: Container(
              width: 450, // Width matching the Figma design
              height: 450, // Height matching the Figma design
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFFA2DED0).withOpacity(0.2), // Light mint with adjusted opacity
                    Color(0xFFD35400).withOpacity(0.0), // Transparent orange
                  ],
                  stops: [0.0, 1],
                  radius: 0.3,
                ),
              ),
            ),
          ),
*/
          // Main content positioned in the lower half
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 0.8, // Adjust width as needed
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To',
                      style: GoogleFonts.poppins(
                        fontSize: 37,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Rawae',
                      style: GoogleFonts.poppins(
                        fontSize: 37,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 27),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        width: 318,
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
                            'Start',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
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
