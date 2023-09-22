import 'package:flutter/material.dart';
import 'package:flutter_template/core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String get route => '/';

  @override
  Widget build(BuildContext context) {
    return TemplateUI(
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypographyUI.normal('normal'),
            InkWell(
              child: TypographyUI.title('title'),
              onTap: () {
                ExternalCore().doRequest(
                  'calendars/general-en/today',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
