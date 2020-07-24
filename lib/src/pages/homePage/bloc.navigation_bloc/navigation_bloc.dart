import 'package:bloc/bloc.dart';
import 'package:flutter_vscode/src/pages/homePage/homepage.dart';
import 'package:flutter_vscode/src/pages/homePage/myaccountspage.dart';
import 'package:flutter_vscode/src/pages/homePage/myorderspage.dart';
import '../myaccountspage.dart';
import '../myorderspage.dart';

import '../homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
    }
  }
}
