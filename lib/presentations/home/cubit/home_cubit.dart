import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/application.dart';
import 'package:flutter_template/core/core.dart';

class HomeCubit extends Cubit<DefaultCubitStateCore> {
  HomeCubit() : super(InitialDCSCore());

  final calendarService = CalendarService();

  CalendarModel? calendarModel;

  Future<void> getToday() async {
    try {
      emit(LoadingDSCCore());
      calendarModel = await calendarService.today();
      emit(DoneDSCCore());
    } catch (e) {
      emit(ErrorDSCCore());
      rethrow;
    }
  }
}
