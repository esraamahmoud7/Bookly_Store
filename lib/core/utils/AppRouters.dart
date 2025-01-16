import 'package:booklt_store/Features/Home/Presentation/views/HomeView.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Home/Presentation/views/widgets/bookDetails_view_body.dart';
import '../../Features/Splash/Presentation/views/Splash_View.dart';



abstract class AppRouter
{
  static const KHome='/homeView';
  static const KBookDetails='/BookDetails';
  static final router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, state) => const SplachView(),
        ),
        GoRoute(
          path: KHome,
          builder: (context, state) => const Homeview(),
        ),
        GoRoute(
          path: KBookDetails,
          builder: (context, state) => const bookDetailsViewBody(),
        )
      ]
  );
}
