import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_austria/module/home/presenter/screens/community/community_screen.dart';
import 'package:hackathon_austria/module/home/presenter/screens/home/home_screen.dart';

class HomeModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeScreen()),
    ChildRoute('/community', child: (context, args) => const CommunityScreen())
  ];
}