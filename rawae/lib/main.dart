import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:google_fonts/google_fonts.dart';
import 'package:your_project_name/login_page.dart'; // Replace with your actual project name

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(), // Start with the WelcomePage
      debugShowCheckedModeBanner: false, // Hide the debug banner
      routes: {
        '/login': (context) => LoginPage(), // Define the LoginPage route
      },
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B2835),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 0.9,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome To',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Rawae',
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        // Navigate to LoginPage when Start button is tapped
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        width: 318,
                        height: 67,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF344C64),
                              Color(0xFFD35400),
                              Color(0xFFA2DED0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(33.5),
                        ),
                        child: Center(
                          child: Text(
                            'Start',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
=======
import 'package:grouped_list/grouped_list.dart';

class CodiaPage extends StatefulWidget {
  CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 412,
        height: 917,
        decoration: BoxDecoration(
          color: const Color(0xff1b2735),
          borderRadius: BorderRadius.circular(26),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -174,
              width: 794,
              top: -160,
              height: 1275,
              child: Image.asset('images/image_941381.png', width: 794, height: 1275,),
            ),
            Positioned(
              left: 46,
              width: 318,
              top: 595,
              height: 67,
              child: Container(
                width: 318,
                height: 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 318,
                      top: 0,
                      height: 67,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 1,
                            width: 314,
                            top: 10,
                            height: 50,
                            child: Container(
                              width: 314,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 133,
                            top: 21,
                            child: Text(
                              'Start',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 17.918, color: const Color(0xffffffff), fontFamily: 'Poppins-Medium', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
>>>>>>> Stashed changes
                      ),
                    ),
                  ],
                ),
              ),
            ),
<<<<<<< Updated upstream
          ),
        ],
=======
            Positioned(
              left: 46,
              width: 320,
              top: 442,
              height: 120,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 321,
                    top: 0,
                    child: Text(
                      'Welcome To \nRawae',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 40.329, color: const Color(0xffffffff), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}
