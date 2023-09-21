import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/presentations/home/home.dart';

class HomeRouting {
  static String get initial => HomePage.route;

  static List<ModularRoute> get routes => [
        ChildRoute<dynamic>(
          HomePage.route,
          child: (context, args) => const HomePage(),
        ),
      ];
}
