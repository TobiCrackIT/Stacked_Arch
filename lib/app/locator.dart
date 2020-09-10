import 'package:get_it/get_it.dart';
import 'package:starter/services/media_service.dart';

GetIt locator=GetIt.instance;

Future<void> setUpLocator(){

  locator.registerLazySingleton<MediaService>(() => MediaService());

}