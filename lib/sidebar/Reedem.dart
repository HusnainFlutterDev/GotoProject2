import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/sidebar/sidebar.dart';
import 'package:gotoproject/sidebar/subscription.dart';

class Reedem extends StatefulWidget {
  const Reedem({super.key});

  @override
  State<Reedem> createState() => _ReedemState();
}

class _ReedemState extends State<Reedem> {
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
                  'Redeem Code',
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
            SizedBox(height: 80),
            Column(
              children: [
                Text(
                  'Enter your promo or gift code to unlock',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF6B7280),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'premium benefits',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF6B7280),
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            Container(
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hint: Center(
                    child: Text(
                      'Enter code here',
                      style: GoogleFonts.poppins(
                        color: Color(0xFFADAEBC),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.confirmation_num,
                    color: const Color.fromARGB(255, 210, 209, 209),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 193, 175, 232),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Redeem Now',
                  style: GoogleFonts.poppins(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
