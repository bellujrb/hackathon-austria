import 'package:flutter/material.dart';
import 'package:hackathon_austria/module/home/presenter/widgets/bottom_navigator.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Column(
            children: [
              Text("Hello, Belluzzo"),
              CircleAvatar(
                child: Text("B"),
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
        body: const SafeArea(child: Column(
          children: [

          ],
        )),
      ),
    );
  }
}