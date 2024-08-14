import 'package:athar_alsahaba/core/functions/navigation.dart';
import 'package:athar_alsahaba/features/on_boarding/presention/views/functions/on_boarding.dart';
import 'package:athar_alsahaba/features/on_boarding/presention/widgets/get_buttons.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/on_boarding_widge.dart';

class OnBoardingScreen extends StatefulWidget {
   const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController(initialPage: 0);
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding:  const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const SizedBox(height:40),
            CustomNavBar(
              onTap: (){
                onBardingVisited();
                customNavigation(context, "/signUp");
              },
            ),
            const SizedBox(height:10,),
            OnBoardingWidgetBody(controller:controller,onPageChanged: (index) {
              setState(() {
                currentIndex=index;
              });
            },),
            const SizedBox(height: 88,),
            GetButtons(currentIndex: currentIndex, controller: controller),
            const SizedBox(height:17,),
          ],
        ),
      ),
     ),
    );
  }
}



