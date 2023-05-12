import 'package:flutter/material.dart';

import '../screen/prevent_screenshot_page.dart';
import '../screen/protect_leakage_data_page.dart';
import '../transition/transition.dart';

class AppRouters {
  static RouteFactory? routes() {
    return (settings) => {
      "/prevent-screenshot": nextTransition(
        settings,
        const PreventScreenshotPage(),
      ),
      "/protect-data-leakage": nextTransition(
        settings,
        const ProtectDataLeakagePage(),
      ),
    }[settings.name];
  }
}