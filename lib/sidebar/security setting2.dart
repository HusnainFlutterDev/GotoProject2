import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/sidebar/security%20Setting.dart';
import 'package:gotoproject/sidebar/sidebar.dart';
import 'package:gotoproject/sidebar/subscription.dart';

class Securitysetting2 extends StatefulWidget {
  const Securitysetting2({super.key});

  @override
  State<Securitysetting2> createState() => _Securitysetting2State();
}

class _Securitysetting2State extends State<Securitysetting2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
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
                      MaterialPageRoute(builder: (_) => siderbar()),
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
                  'Security Setting',
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
            SizedBox(height: 22),
            Container(
              width: double.infinity,
              height: 263,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 26),
                    Row(
                      children: [
                        Icon(Icons.lan, color: Color(0xFF5351F5)),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Connection Protocol',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF111827),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Choose the encryption method for your\n VPN connection',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF6B7280),
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Securitysetting(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.arrow_drop_up_sharp,
                            size: 30,
                            color: Color.fromARGB(255, 144, 145, 146),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 28),
                    Container(
                      width: 300,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 198),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Vmess',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF111827),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Fastest & most secure',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF6B7280),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.bolt,
                            color: Color.fromARGB(255, 197, 197, 198),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28),
                    Container(
                      width: 300,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF3F4F6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 7),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 198),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                width: 17,
                                height: 17,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Vmess',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF111827),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Fastest & most secure',
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF6B7280),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.privacy_tip_sharp, color: Color(0xFFEF4444)),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kill Switch',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF111827),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Block internet if VPN disconnects\n unexpectedly',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF6B7280),
                            fontSize: 8,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 34,
                      height: 18,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.power_settings_new_outlined,
                      color: Color(0xFF22C55E),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Auto Connect',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF111827),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Automatically connect when device starts',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF6B7280),
                            fontSize: 8,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 34,
                      height: 18,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(9),
                      ),
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
