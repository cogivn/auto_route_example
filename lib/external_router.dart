import 'package:auto_route/auto_route.dart';

import 'external_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class ExternalRouter extends $ExternalRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SocialRoute.page, path: '/'),
      ];
}
