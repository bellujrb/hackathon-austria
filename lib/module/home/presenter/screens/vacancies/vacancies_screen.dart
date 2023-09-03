import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/graphic_widget.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/item_vacancies.dart';

import '../../../../../core/styles/colors.dart';

class VacanciesScreen extends StatelessWidget {
  const VacanciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        bottomNavigationBar: const BottomNavigationWidget(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Austria Jobs",
                  style: GoogleFonts.inter(textStyle: styleModifier.mediumRed),
                ),
                const SizedBox(
                  height: 20,
                ),
                const GraphicWidget(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "OPEN POSITIONS",
                      style: GoogleFonts.inter(),
                    ),
                    const Icon(
                      Icons.filter_list_sharp,
                      size: 24,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 36,
                  width: context.mediaWidth * 0.9,
                  decoration: BoxDecoration(color: AppColors.secondaryGray),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ItemVacancies(
                  title: "Microelectronics Engineer",
                  subtitle:
                      "As a Semiconductor Process Engineer, you will play a crucial role in our semiconductor fabrication process.",
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
