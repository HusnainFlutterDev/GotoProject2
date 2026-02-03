import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/home/goto%20region.dart';
import 'package:gotoproject/sidebar/Account.dart';
import 'package:gotoproject/sidebar/Reedem.dart';
import 'package:gotoproject/sidebar/fback.dart';
import 'package:gotoproject/sidebar/sidebar.dart';
import 'package:gotoproject/sidebar/subscription.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFfffff),
      appBar: AppBar(
        backgroundColor: Color(0xFFFfffff),
        title: Center(
          child: Text(
            'Goto VPN',
            style: GoogleFonts.poppins(
              color: Color(0xFF1F2937),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFE5E7EB),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset('assets/images/crown.png'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color(0xFF5351F5),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Text(
                        'JD',
                        style: GoogleFonts.poppins(
                          color: Color(0xFFffffff),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
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
                              color: Color(0xFF15803D),
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Home()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.home, color: Color(0xFF5351F5)),
                title: Text(
                  'Home',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Gotoregion()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.storage, color: Color(0xFF5351F5)),
                title: Text(
                  'Regions',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Account()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.person, color: Color(0xFF5351F5)),
                title: Text(
                  'My Account',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Reedem()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.redeem, color: Color(0xFF5351F5)),
                title: Text(
                  'Redeem Code',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => premium()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.subscriptions, color: Color(0xFF5351F5)),
                title: Text(
                  'Subscription',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Home()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.settings, color: Color(0xFF5351F5)),
                title: Text(
                  'Setting',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Color(0xFF5351F5)),
              title: Text(
                'Privacy Policy',
                style: GoogleFonts.poppins(
                  color: Color(0xFF111827),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Fback()),
                );
              },
              child: ListTile(
                leading: Icon(Icons.feedback, color: Color(0xFF5351F5)),
                title: Text(
                  'Feedback',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF111827),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 1,
              color: const Color.fromARGB(255, 231, 230, 230),
            ),
            SizedBox(height: 11),
            Container(
              width: 240,
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
                  SizedBox(width: 10),
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
      ),
      body: Column(
        children: [
          SizedBox(height: 80),
          Image.asset('assets/images/home image.png'),
          Text(
            'Connected',
            style: GoogleFonts.poppins(
              color: Color(0xFF1F2937),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/clock image.png'),
              Text(
                '00:00:00',
                style: GoogleFonts.poppins(
                  color: Color(0xFF374151),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Goto Region: Pakistan',
            style: GoogleFonts.poppins(
              color: Color(0xFF374151),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
