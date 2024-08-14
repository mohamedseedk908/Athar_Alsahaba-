import 'package:athar_alsahaba/features/on_boarding/presention/views/functions/on_boarding.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex==onBoardingdata.length-1){
      return Column(children: [
        CustomButton(text: AppStrings.createAccount,onPressed: (){
          onBardingVisited();
          customNavigation(context, "/signUp");
        },),
        const SizedBox(height: 10,),
        CustomButton(text: AppStrings.loginNow,onPressed: (){
          onBardingVisited();
          customNavigation(context, "/SignUp");
        },
        )
      ],
      );
    }else {return
      CustomButton(onPressed: (){
        controller.nextPage(duration:const Duration(milliseconds: 200), curve: Curves.bounceIn);
      },
      );
    }

  }
}