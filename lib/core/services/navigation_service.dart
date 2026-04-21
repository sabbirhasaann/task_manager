import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationService {

  // 1. Private Constructor
  NavigationService._();

  // 2. Singleton Instance
  static final NavigationService instance = NavigationService._();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  // what is the difference between final and static here
  void removeAndNavigateToRoute(String route){
    navigatorKey.currentState?.popAndPushNamed(route);
  }

  Future<dynamic> navigateToRoute(String route, {Object? arguments}){
    return navigatorKey.currentState!.pushNamed(route, arguments: arguments);
  }

  void navigateToPage(Widget page){
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (BuildContext context){
        return page;
      }),
    );
  }

  void goBack(){
    navigatorKey.currentState?.pop();
  }

  void goBackWithResult(bool result){
    return navigatorKey.currentState!.pop(result);
  }

  void exitApp(){
    SystemNavigator.pop();
  }
}