import 'package:anilist_client/modules/anime_details/domain/anime_details_bloc.dart';
import 'package:anilist_client/modules/anime_details/presentation/anime_details_screen.dart';
import 'package:anilist_client/modules/home/home_screen.dart';
import 'package:anilist_client/modules/search/domain/search_bloc.dart';
import 'package:anilist_client/modules/search/presentation/search_screen.dart';
import 'package:anilist_client/modules/utility_screens/page_not_found.dart';
import 'package:anilist_client/services/navigation_service/app_pages.dart';
import 'package:anilist_client/services/navigation_service/arguments/anime_details_route_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef ArgumentedWidgetBuilder<Argument> = Widget Function(
    BuildContext context, Argument args);

class NavigationService {
  final navigator = GlobalKey<NavigatorState>();

  Route<dynamic> _generateRoute<Argument, Return>({
    required ArgumentedWidgetBuilder<Argument> widgetBuilder,
    required RouteSettings settings,
  }) {
    if (settings.arguments is! Argument) {
      return routeNotFound();
    }

    return MaterialPageRoute<Return>(
      builder: (context) =>
          widgetBuilder(context, settings.arguments as Argument),
      settings: settings,
    );
  }

  Route<void> routeNotFound() {
    return _generateRoute(
      widgetBuilder: (_, __) => PageNotFound(),
      settings: RouteSettings(
        name: "/not-found",
      ),
    );
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Route<dynamic> generateRoute<Argument, Return>(
            {required ArgumentedWidgetBuilder<Argument> widgetBuilder}) =>
        _generateRoute(
          widgetBuilder: widgetBuilder,
          settings: settings,
        );

    switch (settings.name) {
      case AppPages.home:
        return generateRoute(
          widgetBuilder: (_, __) => HomeScreen(),
        );

      case AppPages.search:
        return generateRoute(
          widgetBuilder: (_, __) => BlocProvider(
            create: (_) => SearchAnimeBloc(),
            child: SearchAnime(),
          ),
        );

      case AppPages.details:
        return generateRoute<AnimeDetailsRouteArgument, void>(
          widgetBuilder: (_, args) => BlocProvider(
            create: (_) => AnimeDetailsBloc(id: args.id),
            child: AnimeDetailsScreen(),
          ),
        );
      default:
        return routeNotFound();
    }
  }
}
