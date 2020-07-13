/*
* Author : LiJiqqi
* Date : 2020/7/13
* 观察路由进出状态并做记录
* 用于应用被杀死后的页面恢复
*/


import 'package:flutter/material.dart';
import 'package:flutter_bedrock/base_framework/config/router_manager.dart';

/*
* 使用routes的话，路由观察者才能生效，
* onGenerateRoute方法则不会生效
*
* */

class CustomNavigatorObserver extends NavigatorObserver{

  final GlobalKey<NavigatorState> navigatorKey;

  CustomNavigatorObserver(this.navigatorKey);


  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    debugPrint('did push --------');
    //debugPrint('${navigator.widget.observers.add(this)}');
    //debugPrint('${route.overlayEntries.toString()}');
    logCurrent('${route?.settings}');
    logCurrent('${previousRoute?.settings}');

  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    debugPrint('did pop --------');
    logCurrent('${route?.settings}');
    logCurrent('${previousRoute?.settings}');

  }


  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {

  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic> previousRoute) {

  }

  @override
  void didStopUserGesture() {

  }

  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic> previousRoute) {

  }

  logCurrent(String info){
    debugPrint('current route  : $info');
  }

  logPrevious(String info){
    debugPrint('previous route : $info');
  }



}
























