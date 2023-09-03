import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/colors.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/container_item_position.dart';

class DiagnosticScreen extends StatelessWidget {
  const DiagnosticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: context.mediaWidth * 0.4,
          title: Text(
            "Position",
            style: GoogleFonts.inter(textStyle: styleModifier.smallPlusBlack),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Modular.to.navigate("jobs"),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: AppColors.secondaryBlue,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Jobs",
                  style: GoogleFonts.inter(textStyle: styleModifier.mediumBlue),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 5
                ),
                child: Text(
                  "Microelectronics Engineer",
                  style: GoogleFonts.inter(textStyle: styleModifier.mediumBlack),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 5
                ),
                child: Text(
                  "Vienna",
                  style: GoogleFonts.inter(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 5
                ),
                child: Text(
                  "OVERVIEW",
                  style: GoogleFonts.inter(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 5
                ),
                child: Text(
                  "As a Semiconductor Process Engineer, you will play a crucial role in our semiconductor fabrication process. You will be responsible for optimizing and maintaining semiconductor manufacturing processes, ensuring product quality, and contributing to the development of next-generation semiconductor technologies.",
                  style: GoogleFonts.inter(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: context.mediaHeight * 0.5,
                width: context.mediaWidth * 0.9,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "QUALIFICATIONS",
                        style: GoogleFonts.inter(),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const ContainerItemPosition(title: "English 1C"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
