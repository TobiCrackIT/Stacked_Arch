import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter/app/router.gr.dart';

class SplashViewModel extends BaseViewModel{

  final navigationService=NavigationService();

  Future handleStartUpLogic()async{

  }

  goTo(){
    navigationService.navigateTo(Routes.bottomBarView);
  }
}