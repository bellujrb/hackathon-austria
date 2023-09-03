import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/graphic_widget.dart';

class VacanciesScreen extends StatelessWidget {
  const VacanciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        bottomNavigationBar: BottomNavigationWidget(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
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
                const GraphicWidget()
              ],
            ),
          ),
        )),
      ),
    );
  }
}
