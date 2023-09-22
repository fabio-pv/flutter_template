import 'package:flutter_template/application/application.dart';
import 'package:flutter_template/core/core.dart';

class CalendarService extends ExternalCore {
  Future<CalendarModel> today() async {
    final result = await doRequest(
      'calendars/general-en/today',
      isAuth: false,
    );

    return result.getModel<CalendarModel>(CalendarModel.fromJson);
  }
}
