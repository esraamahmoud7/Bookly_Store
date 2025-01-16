import 'package:booklt_store/Features/Home/Presentation/views/HomeView.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Presentation/views/Splash_View.dart';



abstract class AppRouter
{
  static final router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) => const SplachView(),
        ),
        GoRoute(
          path: '/homeView',
          builder: (context, state) => const Homeview(),
        )
      ]
  );
}
