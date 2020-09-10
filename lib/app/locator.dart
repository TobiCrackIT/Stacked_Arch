import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter/services/media_service.dart';

GetIt locator=GetIt.instance;

Future<void> setUpLocator(){

  locator.registerLazySingleton<MediaService>(() => MediaService());
  locator.registerLazySingleton<NavigationService>(() => NavigationService());

}