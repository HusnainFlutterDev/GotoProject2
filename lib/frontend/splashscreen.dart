import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/backend/server_Controller.dart';
import 'package:gotoproject/frontend/Signup/signup.dart';
import 'package:http/http.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  var serverController = Get.put(ServerController());
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      serverController.progressValue.value += 0.01;
      if (serverController.progressValue.value >= 1.0) {
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

          Obx(() {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55),
                  child: LinearProgressIndicator(
                    value: serverController.progressValue.value,
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
            );
          }),
        ],
      ),
    );
  }
}
