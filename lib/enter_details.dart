import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurturenest/connected_with_watch.dart';
import 'package:nurturenest/manual_data.dart';
import 'package:nurturenest/show_snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnterDetails extends StatefulWidget {
  const EnterDetails({super.key});

  @override
  State<EnterDetails> createState() => _EnterDetailsState();
}

class _EnterDetailsState extends State<EnterDetails> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final pregnanciesBeforeController = TextEditingController();
  final currentPregnancyMonthController = TextEditingController();
  final otherController = TextEditingController();

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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "ENTER YOUR NAME",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.name,
                cursorColor: const Color(0xff8fcbc9),
                cursorHeight: 30,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff8fcbc9))),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
                style: GoogleFonts.montserrat(
                    color: const Color(0xff8fcbc9),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "TOTAL PREGNANCIES BEFORE",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: pregnanciesBeforeController,
                keyboardType: TextInputType.number,
                cursorColor: const Color(0xff8fcbc9),
                cursorHeight: 30,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff8fcbc9))),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
                style: GoogleFonts.montserrat(
                    color: const Color(0xff8fcbc9),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "ANY PAST DISEASE / GENETIC ISSUE",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: otherController,
                keyboardType: TextInputType.text,
                cursorColor: const Color(0xff8fcbc9),
                cursorHeight: 30,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff8fcbc9))),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
                style: GoogleFonts.montserrat(
                    color: const Color(0xff8fcbc9),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: GestureDetector(
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    if (nameController.text.isEmpty ||
                        pregnanciesBeforeController.text.isEmpty) {
                      showSnackBar("Details missing", context, Colors.red);
                    } else {
                      print("exit");
                      prefs.setString("name", nameController.text);
                      prefs.setString("pregnanciesBefore",
                          pregnanciesBeforeController.text);
                      prefs.setString("others", otherController.text);
                      Get.offAll(() => const ConnectedWithWatch());
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff8fcbc9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: 10),
                    child: Text(
                      "Next",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
