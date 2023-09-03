import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_austria/core/extensions/build_context_utils.dart';
import 'package:hackathon_austria/core/styles/text_styles.dart';

import '../../../../core/styles/colors.dart';

class ItemCarrousel extends StatelessWidget {
  final String title;
  final String subtitle;
  const ItemCarrousel({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final styleModifier = context.appTextStyles;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 328,
            height: 242.17,
            child: Image.asset('assets/welcome1.png'),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: context.mediaWidth * 0.8,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: styleModifier.mediumBlack,
              ),
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.inter(textStyle: styleModifier.smallBlack),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Modular.to.navigate('home'),
            child: Container(
              alignment: Alignment.center,
              height: 36,
              width: context.mediaWidth * 0.6,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Text("Entrar", style: GoogleFonts.inter(
                textStyle: styleModifier.temporaryText
              ),),
            ),
          )
        ],
      ),
    );
  }
}