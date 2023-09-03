import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/styles/colors.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();

}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if(index == 0){
          Modular.to.navigate("/diagnostic");
        }
        if(index == 1){
          Modular.to.navigate("jobs");
        }
        if(index == 2){
          Modular.to.navigate("/");
        }
        if(index == 3){
          Modular.to.navigate("community");
        }
      },
        backgroundColor: const Color(0xFFF9F9F9),
        unselectedItemColor: Colors.amber,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Community',
          ),
        ],
        selectedItemColor: AppColors.primaryBlue,
      );
  }
}