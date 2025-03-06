import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_generator/screens/community.dart';
import 'package:book_generator/screens/book_details.dart';
import 'package:book_generator/screens/family.dart';
import 'package:book_generator/screens/members.dart';

import 'package:book_generator/components/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage(
                'assets/avatar.png',
              ), // Replace with your image
            ),
            SizedBox(height: 15),
            Text(
              'Developed by:',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8.5),
            Text(
              'Hafidh Farhan S',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(top: 15, bottom: 40),
              decoration: BoxDecoration(
                color: Color(0xFF43B888),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  buildButton(
                    'Community',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommunityScreen(),
                        ),
                      );
                    },
                  ),
                  buildButton(
                    'Book Details',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDetailsScreen(),
                        ),
                      );
                    },
                  ),
                  buildButton(
                    'Members',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MembersScreen(),
                        ),
                      );
                    },
                  ),
                  buildButton(
                    'Family',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FamilyScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

