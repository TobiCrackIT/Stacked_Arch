import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter/ui/views/splash/splash_view_model.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.handleStartUpLogic(),
      builder: (context, model, child) => Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'STARTER\nKIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 30,
                ),
                OutlineButton(
                    color: Theme.of(context).colorScheme.error,
                    textColor: Theme.of(context).colorScheme.primary,
                    padding: EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Text(
                      'START',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    onPressed: ()=>model.goTo(),
                ),
              ],
            ),
          )),
    );
  }
}
