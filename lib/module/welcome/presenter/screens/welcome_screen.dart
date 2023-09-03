import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

import '../widgets/item_carrousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        layout: SwiperLayout.CUSTOM,
        control: const SwiperControl(color: Colors.blue),
        customLayoutOption: CustomLayoutOption(startIndex: 1, stateCount: 3)
            .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
          const Offset(-370.0, -40.0),
          const Offset(0.0, 0.0),
          const Offset(370.0, -40.0)
        ]),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const ItemCarrousel(
              title: "Discover opportunities in Austria",
              subtitle: "Bla bla bla",
            );
          }
          if (index == 1) {
            return const ItemCarrousel(
              title: "Boost your career with hiring trails",
              subtitle: "Bla bla bla",
            );
          }
          if (index == 2) {
            return const ItemCarrousel(
              title: "Find a community for you to receibe",
              subtitle: "Bla bla bla",
            );
          } else {
            return const SizedBox();
          }
        },
        itemCount: 3,
      ),
    );
  }
}
