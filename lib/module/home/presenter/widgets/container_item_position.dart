import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class ContainerItemPosition extends StatelessWidget {
  final String title;
  const ContainerItemPosition({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Container(
      height: context.mediaHeight * 0.06,
      width: context.mediaWidth * 0.8,
      decoration: BoxDecoration(
          color: const Color(0x1908A767),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(textStyle: styleModifier.smallGreen),
            ),
            Icon(
              Icons.verified,
              color: AppColors.primaryGreen,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
