import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:starter/ui/views/home/home_view.dart';
import 'package:starter/ui/views/startup/startup_view.dart';

@AdaptiveAutoRouter(
  routes: [
    CustomRoute(
      page: HomeView,
      initial: true,
      durationInMilliseconds: 300,
      transitionsBuilder: TransitionsBuilders.fadeIn
    ),

    CustomRoute(
        page: StartUpView,
        transitionsBuilder: TransitionsBuilders.fadeIn
    ),

  ],
)
class $Router{

}