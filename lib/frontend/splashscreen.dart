import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/Signup/signup.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  double progressValue = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
      setState(() {
        progressValue += 0.01; // progress increases
      });

      if (progressValue >= 1.0) {
        timer.cancel();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Signup()),
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 40),
          Center(
            child: Column(
              children: [
                Image.asset('assets/images/aeroplane.png'),

                SizedBox(height: 16),
                Text(
                  'Goto VPN',
                  style: GoogleFonts.poppins(
                    color: Colors.indigoAccent,
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          /// PROGRESS
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: LinearProgressIndicator(
                  minHeight: 8,
                  backgroundColor: const Color(0xFFB9B9B9),
                  borderRadius: BorderRadius.circular(3),
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Initializing secure connection...',
                style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 139, 139, 139),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
