import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter/ui/views/bottom_bar/bottom_bar_view_model.dart';
import 'package:starter/ui/views/home/home_view.dart';
import 'package:starter/ui/views/startup/startup_view.dart';

class BottomBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
        builder: (context,model,child){
          return Scaffold(
            body: getViewForIndex(model.currentIndex),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.grey[800],
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              items: [
                BottomNavigationBarItem(title: Text('Task'),icon: Icon(Icons.local_florist)),
                BottomNavigationBarItem(title: Text('Personal'),icon: Icon(Icons.alternate_email)),
              ],
            ),
          );
        },
        viewModelBuilder: ()=>BottomBarViewModel(),
    );
  }

  Widget getViewForIndex(int index){
    switch(index){
      case 0:
        return HomeView();
      case 1:
        return StartUpView();
      default:
        return HomeView();

    }
  }
}


