// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:pluginexample/social_page.dart' as _i1;

abstract class $DemoRouter extends _i2.RootStackRouter {
  $DemoRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SocialRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SocialPage(),
      );
    }
  };
}

/// generated route for
/// [_i1.SocialPage]
class SocialRoute extends _i2.PageRouteInfo<void> {
  const SocialRoute({List<_i2.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
