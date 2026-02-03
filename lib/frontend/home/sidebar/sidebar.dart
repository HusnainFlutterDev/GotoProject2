import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/frontend/home/goto%20region.dart';
import 'package:gotoproject/frontend/home/home.dart';

class siderbar extends StatefulWidget {
  const siderbar({super.key});

  @override
  State<siderbar> createState() => _siderbarState();
}

class _siderbarState extends State<siderbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Home()),
                    );
                  },
                  child: Image.asset('assets/images/false.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              children: [
                Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                    color: Color(0xFF5351F5),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Center(
                    child: Text(
                      'JD',
                      style: GoogleFonts.poppins(
                        color: Color(0xFFFFFFFF),
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Michael Chen',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF111827),
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Device ID: 998844732',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF6B7280),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 6),
                      Container(
                        width: 63,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xFFDCFCE7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Premium',
                            style: GoogleFonts.poppins(
                              color: Color(0xFF6B7280),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color.fromARGB(255, 231, 230, 230),
          ),
          SizedBox(height: 37),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Home()),
              );
            },
            child: barWidget(icon: Icons.home, text1: 'Home'),
          ),
          SizedBox(height: 14),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Gotoregion()),
              );
            },
            child: barWidget(icon: Icons.storage, text1: 'Regions'),
          ),
          SizedBox(height: 14),
          barWidget(icon: Icons.person, text1: 'My Account'),
          SizedBox(height: 14),
          barWidget(icon: Icons.redeem_sharp, text1: 'Redeem Code'),
          SizedBox(height: 14),
          barWidget(icon: Icons.subscriptions, text1: 'Subscription'),
          SizedBox(height: 14),
          barWidget(icon: Icons.settings, text1: 'Setting'),
          SizedBox(height: 14),
          barWidget(icon: Icons.privacy_tip, text1: 'Privacy Policy'),
          SizedBox(height: 14),
          barWidget(icon: Icons.feedback, text1: 'Feedback'),
          Spacer(),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color.fromARGB(255, 231, 230, 230),
          ),
          SizedBox(height: 11),
          Container(
            width: 300,
            height: 48,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF5054FE), Color(0XFF9260FF)],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Vector (4).png', height: 20),
                Text(
                  'Sign out',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          Text(
            'Goto VPN v2.1.4',
            style: GoogleFonts.poppins(
              color: Color(0xFF9CA3AF),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 9),
          Text(
            '© 2026 Goto VPN. All rights reserved.',
            style: GoogleFonts.poppins(
              color: Color(0xFF9CA3AF),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class barWidget extends StatelessWidget {
  final IconData icon;
  final String text1;
  const barWidget({super.key, required this.icon, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFF5351F5)),
          SizedBox(width: 16),
          Text(
            text1,
            style: GoogleFonts.poppins(
              color: Color(0xFF111827),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
