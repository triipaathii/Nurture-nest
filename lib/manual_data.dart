import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nurturenest/connected_with_watch.dart';
import 'package:nurturenest/homepage.dart';

class EnterManualDetails extends StatefulWidget {
  const EnterManualDetails({super.key});

  @override
  State<EnterManualDetails> createState() => _EnterManualDetailsState();
}

class _EnterManualDetailsState extends State<EnterManualDetails> {
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final currentPregnancyMonthController = TextEditingController();
  final otherController = TextEditingController();
  final highBpController = TextEditingController();
  final lowBpController = TextEditingController();
  final hgController = TextEditingController();
  final bSController = TextEditingController();

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
                height: height * 0.02,
              ),
              Text(
                "ENTER YOUR AGE",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: ageController,
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
                "ENTER YOUR WEIGHT(in kg)",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: weightController,
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
                "CURRENT PREGNANCY MONTH",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: currentPregnancyMonthController,
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
                "ENTER BP - HIGH",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: highBpController,
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
                "ENTER BP - LOW",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: lowBpController,
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
                "ENTER HEMOGLOBIN LEVEL",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: hgController,
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
                "ENTER BLOOD SUGAR",
                style: GoogleFonts.anton(color: Colors.black),
              ),
              TextFormField(
                controller: bSController,
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
                  onTap: () => Get.offAll(() => const ConnectedWithWatch()),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff8fcbc9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: 10),
                    child: Text(
                      "Save",
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
