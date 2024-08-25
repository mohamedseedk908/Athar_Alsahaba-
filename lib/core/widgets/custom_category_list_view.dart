import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class HistoricalCharacter extends StatelessWidget {
  const HistoricalCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 133,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.deepGrey,
              blurRadius: 5,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 96,
            width: 74,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(image: AssetImage(Assets.imagesFrame2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          Text("Lionheart",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: CustomTextStyles.poppins500style18,
          ),
        ],
      ),
    );
  }
}
