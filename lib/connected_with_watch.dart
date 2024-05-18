import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurturenest/homepage.dart';

class ConnectedWithWatch extends StatefulWidget {
  const ConnectedWithWatch({super.key});

  @override
  State<ConnectedWithWatch> createState() => _ConnectedWithWatchState();
}

class _ConnectedWithWatchState extends State<ConnectedWithWatch> {
  final db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "NURTURE NEST",
            style:
                GoogleFonts.anton(fontSize: 40, color: const Color(0xff8fcbc9)),
          ),
          actions: [
            Image.asset(
              "assets/images/nith_logo.png",
              height: height * 0.1,
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: height * 0.1),
            Image.asset(
              "assets/images/connecting.gif",
              width: width,
            ),
            SizedBox(height: height * 0.05),
            Text(
              "SMARTWATCH CONNECTED",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            ),
            // SizedBox(height: height * 0.02),
            // Text(
            //   "Follow these instructions:",
            //   style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: height * 0.01),
            // Text(
            //   "1. Turn on your Bluetooth.",
            //   style: GoogleFonts.montserrat(),
            // ),
            // Text(
            //   "2. Check available devices.",
            //   style: GoogleFonts.montserrat(),
            // ),
            // Text(
            //   "3. Click on the required devices name.",
            //   style: GoogleFonts.montserrat(),
            // ),
            // Text(
            //   "4. Press the REFRESH button below.",
            //   style: GoogleFonts.montserrat(),
            // ),
            SizedBox(height: height * 0.1),
            GestureDetector(
              onTap: () async {
                await db.collection("connection").get().then((event) {
                  for (var doc in event.docs) {
                    print("${doc.id} => ${doc.data()}");
                  }
                });
                // Get.offAll(() => const HomePage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff8fcbc9),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: width * 0.1, vertical: 10),
                child: Text(
                  "NEXT",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
