import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/presentations/home/home.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => HomeRouting.routes;
}
