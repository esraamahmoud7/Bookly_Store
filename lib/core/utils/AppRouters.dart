import 'package:booklt_store/Features/Home/Presentation/views/HomeView.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Home/Presentation/views/widgets/CustomScrollBookDetailsView.dart';
import '../../Features/Splash/Presentation/views/Splash_View.dart';
import '../../Features/search/presentation/views/searchView.dart';

abstract class AppRouter {
  static const KHome = '/homeView';
  static const KBookDetails = '/BookDetails';
  static const KBookSearch = '/BookSearch';

  static final router = GoRouter(routes: <RouteBase>[
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
      builder: (context, state) => const customScrollBookDetailView(),
    ),
    GoRoute(
      path: KBookSearch,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
