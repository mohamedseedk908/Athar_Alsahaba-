import 'package:flutter/cupertino.dart';
import '../../../../core/widgets/custom_category_list_view.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
          clipBehavior: Clip.none,
          itemBuilder: (_, index) {
            return const HistoricalCharacter();
          }, separatorBuilder: (context, index) {
        return const SizedBox(width: 16,);
      },
          scrollDirection: Axis.horizontal,
          itemCount: 6),
    );
  }
}
