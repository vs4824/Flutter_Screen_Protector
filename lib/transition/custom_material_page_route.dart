import 'package:flutter/material.dart';
import 'custom_page_transition_type.dart';
import 'material_route_next_transition_mixin.dart';

class CustomMaterialPageRoute<T> extends PageRoute<T>
    with MaterialRouteNextTransitionMixin<T> {
  /// Construct a MaterialPageRoute whose contents are defined by [builder].
  ///
  /// The values of [builder], [maintainState], and [PageRoute.fullscreenDialog]
  /// must not be null.
  CustomMaterialPageRoute({
    required this.type,
    required this.builder,
    RouteSettings? settings,
    this.maintainState = true,
    bool fullscreenDialog = false,
  }) : super(settings: settings, fullscreenDialog: fullscreenDialog) {
    assert(opaque);
  }

  final CustomPageTransitionType type;

  /// Builds the primary contents of the route.
  final WidgetBuilder builder;

  @override
  Widget buildContent(BuildContext context) => builder(context);

  @override
  final bool maintainState;

  @override
  String get debugLabel => '${super.debugLabel}(${settings.name})';

  @override
  CustomPageTransitionType transitionType() => type;
}