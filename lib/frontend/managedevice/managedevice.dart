import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/frontend/home/sidebar/Account.dart';
import 'package:gotoproject/frontend/premium/premium.dart';

class Managedevice extends StatefulWidget {
  const Managedevice({super.key});

  @override
  State<Managedevice> createState() => _ManagedeviceState();
}

class _ManagedeviceState extends State<Managedevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Account()),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 241, 240, 240),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),

                Text(
                  'Manage Devices',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F2937),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => premium()),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 241, 240, 240),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/images/crown.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 167,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              'Connected Devices',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF1F2937),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '2 of 5 devices connected',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF6B7280),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 223, 238),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                              'assets/images/mobile.png',
                              color: Color(0xFF5351F5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Usage',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF374151),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '40%',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'You can connect up to 3 more devices with your current plan',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF6B7280),
                            fontSize: 7,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 223, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          '+',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF5351F5),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14),
                    Text(
                      'Add New Device',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF374151),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 152, 159, 172),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              width: double.infinity,
              height: 66,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 228, 223, 238),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/mobile.png',
                          color: Color(0xFF5351F5),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'iPhone 15 Pro',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF374151),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 42,
                              height: 14,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 195, 195, 237),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  'Current',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF5351F5),
                                    fontSize: 7,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 206, 207, 210),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            Text(
                              'Active now',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 166, 167, 171),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              width: double.infinity,
              height: 66,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFF6FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(Icons.laptop, color: Colors.blueAccent),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'iPhone 15 Pro',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF374151),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 206, 207, 210),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            Text(
                              'Last active 1 hour ago',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 166, 167, 171),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
