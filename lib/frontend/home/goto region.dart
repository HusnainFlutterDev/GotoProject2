import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gotoproject/backend/server_Controller.dart';

import 'package:gotoproject/frontend/home/sidebar/sidebar.dart';

class Gotoregion extends StatefulWidget {
  const Gotoregion({super.key});

  @override
  State<Gotoregion> createState() => _GotoregionState();
}

class _GotoregionState extends State<Gotoregion> {
  var serverController = Get.put(ServerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                    'Goto Region',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF1F2937),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
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

                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Icon(Icons.search, color: Colors.grey, size: 20),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 26),
              Obx(() {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: serverController.servers.length,

                  itemBuilder: (context, index) {
                    var server = serverController.servers[index];

                    return GestureDetector(
                      onTap: () => serverController.SelectedIndex.value = index,
                      child: Obx(() {
                        return regionWidget(
                          isselected:
                              serverController.SelectedIndex.value == index,
                          images: server["image"],
                          text1: server['name'],
                        );
                      }),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class regionWidget extends StatelessWidget {
  bool isselected;

  final String images;
  final String text1;
  regionWidget({
    super.key,
    required this.images,
    required this.text1,
    required this.isselected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(
              color: isselected
                  ? Colors.black
                  : const Color.fromARGB(255, 241, 240, 240),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Image.network(images, height: 28),
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
