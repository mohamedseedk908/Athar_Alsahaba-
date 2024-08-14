import 'package:athar_alsahaba/core/utils/app_assets.dart';
import 'package:athar_alsahaba/core/utils/app_strings.dart';



class OnBoardingModel{
final String imagepath;
final String title;
final String supTitle;

  OnBoardingModel({
     required this.imagepath,
     required this.title,
     required this.supTitle

  });
}


List<OnBoardingModel> onBoardingdata = [
  OnBoardingModel(
      imagepath: Assets.imagesOnBoarding,
      title: AppStrings.title1,
      supTitle: AppStrings.suptitle
  ),
  OnBoardingModel(
      imagepath: Assets.imagesOnBoarding1,

      title: AppStrings.title2,
      supTitle: AppStrings.suptitle
  ),
  OnBoardingModel(
      imagepath: Assets.imagesOnBoarding1,
      title: AppStrings.title3,
      supTitle: AppStrings.suptitle
  ),
];
