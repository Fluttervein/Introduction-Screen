import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:google_fonts/google_fonts.dart';

class IntoScreen extends StatelessWidget {
  const IntoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // the image
          Image.network(
            'https://images.pexels.com/photos/1425247/pexels-photo-1425247.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // the filter
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0, 0.65),
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),

          // a text on the top
          Positioned(
            top: 100,
            child: Row(
              children: [
                const SizedBox(width: 12),
                //  a vertical text
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'INTRO',
                    style: GoogleFonts.righteous(
                      fontSize: 44,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'This is a sample intro screen for a flutter application'
                        .toUpperCase(),
                    style: GoogleFonts.righteous(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'INTRODUCTION SCREEN',
                    style: GoogleFonts.righteous(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'INTRODUCTION SCREEN',
                    style: GoogleFonts.righteous(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'INTRODUCTION SCREEN',
                    style: GoogleFonts.righteous(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // the button
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: DottedBorder(
                borderType: BorderType.Circle,
                dashPattern: const [10, 5],
                strokeWidth: 0.5,
                color: Colors.white,
                child: Container(
                  height: 180,
                  width: 180,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: DottedBorder(
                    borderType: BorderType.Circle,
                    dashPattern: const [6, 3],
                    strokeWidth: 1,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
