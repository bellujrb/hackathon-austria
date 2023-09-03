import 'package:flutter/material.dart';

import '../../../../../core/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Vagas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: AppColors.primaryBlue,
      ),
      body: const Scaffold(
        body: Center(
          child: Text("Centro"),
        ),
      )
    );
  }
}

