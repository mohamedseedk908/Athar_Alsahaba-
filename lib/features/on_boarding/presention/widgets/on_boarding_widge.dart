import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:athar_alsahaba/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';
import 'custom_Smooth_page.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key, required this.controller, this.onPageChanged});

  final PageController controller;
  final Function(int)?onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged:onPageChanged,
        controller: controller,
        itemCount: onBoardingdata.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(onBoardingdata[index].imagepath),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomSmothBageIndicator(
                controller: controller,
              ),
              const SizedBox(
                height: 32,
              ),
               Text(onBoardingdata[index].title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.poppins500style24,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(onBoardingdata[index].supTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.poppins500style18,
                  textAlign: TextAlign.center),
            ],
          );
        },
      ),
    );
  }
}
