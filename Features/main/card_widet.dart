import 'dart:ui';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.urlImage,
    required this.textOfBottom,
    required this.pageShuoldGoTo,
  });

  final Widget urlImage;
  final String textOfBottom;
  final String pageShuoldGoTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, pageShuoldGoTo);
      },
      child: Stack(
        children: [
          // Drop Shadow Effect
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 40),
            child: Container(
              width: 400,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(119, 0, 0, 0),
                    Color.fromARGB(119, 0, 0, 0),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.9), // Drop Shadow Color
                    offset: const Offset(-46, 15), // Shadow X, Y
                    blurRadius: 157.6, // Blur
                    spreadRadius: 4, // Spread
                  ),
                ],
              ),
            ),
          ),

          // Inner Shadow Effect
          Positioned(
            left: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 125, sigmaY: 125),
                child: Container(
                  width: 400,
                  height: 110,
                  decoration: BoxDecoration(
                    color: const Color(0xFF27247B)
                        .withOpacity(0.3), // Inner Shadow Color
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),

          // Image Positioned
          Positioned(child: urlImage),

          // Button Positioned
          Positioned(
            right: 20,
            top: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, pageShuoldGoTo);
              },
              child: Container(
                width: 240,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(90, 74, 145, 226),
                      Color.fromARGB(90, 99, 48, 129),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    textOfBottom,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
