import 'package:flutter/material.dart';
import 'custom_material_page_route.dart';
import 'custom_page_transition_type.dart';

Route<dynamic> toTopTransition(RouteSettings settings, Widget target) {
  return CustomMaterialPageRoute(
    settings: settings,
    builder: (_) => target,
    type: CustomPageTransitionType.bottomToTop,
  );
}

Route<dynamic> nextTransition(RouteSettings settings, Widget target) {
  return CustomMaterialPageRoute(
    settings: settings,
    builder: (_) => target,
    type: CustomPageTransitionType.rightToLeft,
  );
}

Route<dynamic> standardTransition(RouteSettings settings, Widget target) {
  return MaterialPageRoute(
    settings: settings,
    builder: (_) => target,
  );
}