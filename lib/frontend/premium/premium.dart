import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/frontend/sidebar/sidebar.dart';

class premium extends StatefulWidget {
  const premium({super.key});

  @override
  State<premium> createState() => _premiumState();
}

class _premiumState extends State<premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 56),
            Row(
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
                SizedBox(width: 70),
                Text(
                  'Premium',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F2937),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Text(
                  'Choose a subscription',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F2937),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 29),
            premiumWidget(
              text1: 'Weekly Plan',
              text2: '\$1.99',
              text3: '/month',
            ),
            SizedBox(height: 13),
            premiumWidget(
              text1: 'Monthly Plan',
              text2: '\$2.99',
              text3: '/month',
            ),
            SizedBox(height: 13),
            premiumWidget(
              text1: 'Quarterly Plan',
              text2: '\$4.99',
              text3: '/month',
            ),
            SizedBox(height: 13),
            premiumWidget(
              text1: 'Yearly Plan',
              text2: '\$49.99',
              text3: '/month',
            ),
            SizedBox(height: 80),
            Container(
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF5054FE), Color(0Xff9260FF)],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Upgrade Plan',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Cancel anytime. No hidden fees.',
              style: GoogleFonts.poppins(
                color: Color(0xFF6B7280),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class premiumWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const premiumWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 231, 231, 231)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F2937),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      text2,
                      style: GoogleFonts.poppins(
                        color: Color(0xFF5351F5),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      text3,
                      style: GoogleFonts.poppins(
                        color: Color(0xFF6B7280),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFD1D5DB), width: 2),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
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
    );
  }
}
