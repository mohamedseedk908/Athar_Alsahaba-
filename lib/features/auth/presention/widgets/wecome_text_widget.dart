import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_text_style.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.center,child: Text(text,style: CustomTextStyles.poppins600style28,),);
  }
}

