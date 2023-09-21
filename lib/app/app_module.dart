import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/app.dart';

class AppModule extends Module {
  AppModule();

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => AppRouting.routes;
}
