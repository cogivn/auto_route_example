import 'package:auto_route/auto_route.dart';

import 'demo_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class DemoRouter extends $DemoRouter {
  @override
  List<AutoRoute> get routes => [];
}
