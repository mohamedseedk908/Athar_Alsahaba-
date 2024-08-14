import 'package:athar_alsahaba/core/functions/navigation.dart';


  void delayedSplashScreen(context,path){
    Future.delayed(const Duration(seconds: 2),(){
      customReplacementNavigation(context, path);
    });


  }
