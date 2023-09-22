import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/presentations/home/cubit/home_cubit.dart';
import 'package:flutter_template/presentations/home/home.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => HomeCubit(),
        ),
      ];

  @override
  List<ModularRoute> get routes => HomeRouting.routes;
}
