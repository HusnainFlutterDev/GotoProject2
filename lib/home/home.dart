import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/sidebar/sidebar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
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
                      color: const Color.fromARGB(255, 240, 239, 239),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.menu, color: Color(0xFF374151)),
                  ),
                ),
                Text(
                  'Goto VPN',
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F2937),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 239, 239),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/crown.png'),
                ),
              ],
            ),
          ),
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
