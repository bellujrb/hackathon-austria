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
          return const ItemCarrousel();
        },
        itemCount: 3,
      ),
    );
  }
}


