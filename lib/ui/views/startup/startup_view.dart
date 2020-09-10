import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter/ui/views/startup/startup_view_model.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context,model,child){
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),

        );
      },
      viewModelBuilder: ()=>StartUpViewModel(),);
  }
}
