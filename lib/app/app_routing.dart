import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/presentations/home/home.dart';

class AppRouting {
  static List<ModularRoute> get routes {
    return <ModularRoute>[
      ModuleRoute<dynamic>(
        HomeRouting.initial,
        module: HomeModule(),
      ),
    ];
  }
}
