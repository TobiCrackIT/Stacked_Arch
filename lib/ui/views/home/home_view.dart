import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter/ui/views/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      disposeViewModel: false,
      builder: (context,model,child){
        return Scaffold(
          body: Center(
            child: Text(model.title,style: TextStyle(fontSize: 20),),
          ),

          floatingActionButton: FloatingActionButton(onPressed: ()=>model.updateCounter()),
        );
      },
      viewModelBuilder: ()=>HomeViewModel(),);
  }
}
