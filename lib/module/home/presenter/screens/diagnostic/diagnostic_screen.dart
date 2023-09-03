import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/colors.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';

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
        body: const SafeArea(
          child: Center(
            child: Text("Centro"),
          ),
        ));
  }
}
