import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/backend/server_Controller.dart';
import 'package:gotoproject/frontend/Signup/signup.dart';

import 'package:gotoproject/frontend/home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var serverController = Get.put(ServerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Signup()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 235, 235, 235),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 25),

                  Text(
                    'Sign up to GotoVPN',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 14),
                  Text(
                    'Sign in to activate your trial and enjoy\n seamless access across devices.',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF6B7280),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 23),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 205, 204, 204),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13),
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 205, 204, 204),
                      ),
                      borderRadius: BorderRadius.circular(13),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Obx(() {
                        return TextField(
                          obscureText: serverController.passwordhidden.value,

                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: Icon(
                                serverController.passwordhidden.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                serverController.passwordhidden.value =
                                    !serverController.passwordhidden.value;
                              },
                            ),
                            border: InputBorder.none,
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: [
                      Obx(() {
                        return GestureDetector(
                          onTap: () {
                            if (serverController.isselected.value =
                                !serverController.isselected.value)
                              ;
                          },
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: serverController.isselected.value
                                    ? Colors.transparent
                                    : Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: serverController.isselected.value
                                ? Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xff5054FE),
                                          Color(0xff9260FF),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      size: 12,
                                    ),
                                  )
                                : null,
                          ),
                        );
                      }),
                      SizedBox(width: 6),
                      Text(
                        'Remember Me',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF667085),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 23),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Home()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 157, 248),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  Row(
                    children: [
                      Container(
                        width: 75,
                        height: 2,
                        decoration: BoxDecoration(color: Color(0xFFE5E7EB)),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Or continue with',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF9CA3AF),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 7),
                      Container(
                        width: 75,
                        height: 2,
                        decoration: BoxDecoration(color: Color(0xFFE5E7EB)),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 212, 212, 212),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'G',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Google',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 22),
                      Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 212, 212, 212),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple_sharp,
                              color: Colors.black,
                              size: 33,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Apple',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 202),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF4B5563),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => Signup()),
                          );
                        },
                        child: Text(
                          ' Sign in',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF5054FE),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
