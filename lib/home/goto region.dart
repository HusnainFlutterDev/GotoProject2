import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/sidebar/sidebar.dart';
import 'package:gotoproject/sidebar/subscription.dart';

class Gotoregion extends StatefulWidget {
  const Gotoregion({super.key});

  @override
  State<Gotoregion> createState() => _GotoregionState();
}

class _GotoregionState extends State<Gotoregion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 56),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
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
                  'Goto Region',
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
            SizedBox(height: 26),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFF9FAFB),
                borderRadius: BorderRadius.circular(13),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 15),
                  hintText: "Search location...",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),

                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 26),
            regionWidget(
              images: 'assets/images/pakistan.png',
              text1: 'Pakistan',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/united kingdom.png',
              text1: 'United Kingdom',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/pakistan.png',
              text1: 'Pakistan',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/united kingdom.png',
              text1: 'United Kingdom',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/pakistan.png',
              text1: 'Pakistan',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/united kingdom.png',
              text1: 'United Kingdom',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/pakistan.png',
              text1: 'Pakistan',
            ),
            SizedBox(height: 12),
            regionWidget(
              images: 'assets/images/united kingdom.png',
              text1: 'United Kingdom',
            ),
          ],
        ),
      ),
    );
  }
}

class regionWidget extends StatelessWidget {
  final String images;
  final String text1;
  const regionWidget({super.key, required this.images, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 241, 240, 240)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Image.asset(images, height: 28),
              ),
              SizedBox(width: 3),
              Text(
                text1,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
