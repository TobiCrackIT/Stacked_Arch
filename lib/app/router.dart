import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:starter/ui/views/bottom_bar/bottom_bar_view.dart';
import 'package:starter/ui/views/home/home_view.dart';
import 'package:starter/ui/views/splash/splash_view.dart';
import 'package:starter/ui/views/startup/startup_view.dart';

@AdaptiveAutoRouter(
  routes: [
    CustomRoute(
      page: SplashView,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 300,
    ),

    CustomRoute(
        page: BottomBarView,
        durationInMilliseconds: 300,
        transitionsBuilder: TransitionsBuilders.fadeIn
    ),

    CustomRoute(
      page: HomeView,
      durationInMilliseconds: 300,
      transitionsBuilder: TransitionsBuilders.fadeIn
    ),

    CustomRoute(
        page: StartUpView,
        durationInMilliseconds: 200,
        transitionsBuilder: TransitionsBuilders.fadeIn
    ),

  ],
)

class $Router{

}