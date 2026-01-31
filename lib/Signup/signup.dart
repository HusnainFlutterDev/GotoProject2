import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/Signup/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          children: [
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
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
                  'Premium access in one tap',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF6B7280),
                    fontSize: 14,
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Login()),
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
                        'Sign Up',
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
            Spacer(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
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
                          MaterialPageRoute(builder: (_) => Login()),
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
    );
  }
}
