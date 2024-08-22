import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class WelcomBannar extends StatelessWidget {
  const WelcomBannar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: const BoxDecoration(
        image:  DecorationImage(image: AssetImage("assets/images/SignIn (2).png",),fit:BoxFit.fill,),
      ),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
          const Text(AppStrings.welcome,style: CustomTextStyles.pacifico700style32,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Assets.imagesVector1),
              SvgPicture.asset(Assets.imagesVector2),

            ],
          ),
        ],
      ),
    );
  }
}
