import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurturenest/enter_details.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              height: height * 0.01,
            ),
            Image.asset("assets/images/nith_logo.png", height:  height * 0.1,),
            SizedBox(
              width: width,
              height: height * 0.01,
            ),
            // // Text(
            // //   "NITH - Major Project",
            // //   style: GoogleFonts.montserrat(
            // //     fontWeight : FontWeight.bold,
            // //     fontSize: 18
            // //   ),
            // ),
            Image.asset(
              "assets/images/home_image.jpeg",
              width: width,
            ),
            Text(
              "NURTURE NEST",
              style: GoogleFonts.anton(
                fontSize: 40,
                color: const Color(0xff8fcbc9)
              ),
            ),
            // const Spacer(),
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: () => Get.offAll(() => const EnterDetails()),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff8fcbc9),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 10),
                child: Text(
                  "Next",
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
    );
  }
}