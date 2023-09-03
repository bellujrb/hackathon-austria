import 'package:flutter/material.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      body: SafeArea(
        child: Center(
          child: Text("Centro"),
        ),
      )
    );
  }
}

