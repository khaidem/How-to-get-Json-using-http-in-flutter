import 'package:auto_route/auto_route.dart';
import '../page/page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: HomeDetailPage),
  ],
)
class $AppRouter {}
