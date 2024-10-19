part of 'router_imports.dart';

final appRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<CustomRoute> get routes => [
        // inital route home screen which show welcome screen to users
        CustomRoute(
          page: HomeViewRoute.page,
          path: "/",
          initial: true,
        ),

        // second route form screen which show users form to fill
        CustomRoute(
          page: FormViewRoute.page,
        ),

        // Third route form screen which show users that the data submitted successfully
        CustomRoute(
          page: ConfirmationViewRoute.page,
        ),

        // fourth route form screen which show user details
        CustomRoute(
          page: DetailsViewRoute.page,
        ),
      ];
}
