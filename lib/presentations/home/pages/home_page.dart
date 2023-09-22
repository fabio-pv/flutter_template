import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/core/core.dart';
import 'package:flutter_template/presentations/home/cubit/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String get route => '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cubit = Modular.get<HomeCubit>();

  @override
  void initState() {
    _cubit.getToday();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TemplateUI(
      BlocBuilder<HomeCubit, DefaultCubitStateCore>(
        bloc: _cubit,
        builder: (context, state) {
          if (_cubit.calendarModel == null) {
            return const SizedBox();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TypographyUI.title(_cubit.calendarModel!.date!),
                TypographyUI.title(_cubit.calendarModel!.weekday!),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: _cubit.calendarModel!.celebrations!.length,
                  itemBuilder: (context, index) {
                    final celebration = _cubit.calendarModel!.celebrations![index];
                    return TypographyUI.normal(
                      celebration.title!,
                      textAlign: TextAlign.center,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
