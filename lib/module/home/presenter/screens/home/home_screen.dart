import 'package:flutter/material.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';

import '../../widgets/appbar_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      bottomNavigationBar: BottomNavigationWidget(),
      body: const SafeArea(
        child: Center(
          child: Text("Centro"),
        ),
      )
    );
  }
}

