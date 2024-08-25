import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_header_text.dart';
import '../widgets/home_container.dart';
import '../widgets/home_app_bar_widget.dart';
import '../widgets/home_category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child:  Scaffold(
        body:  CustomScrollView(slivers:  [
          SliverToBoxAdapter(child:  SizedBox(height: 72,),),
          SliverToBoxAdapter(child:  CustomHomeViewAppBar(),),
          SliverToBoxAdapter(child:  SizedBox(height: 37,),),
          SliverToBoxAdapter(child:  CustomHeaderText(text: AppStrings.historicalPeriods,),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
          SliverToBoxAdapter(child: HistoricalPeriods(),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
          SliverToBoxAdapter(child: CustomHeaderText(text: AppStrings.historicalCharacters,),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
          SliverToBoxAdapter(child: CustomCategoryListView(),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
          SliverToBoxAdapter(child: CustomHeaderText(text: AppStrings.historicalSouvenirs,),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
          SliverToBoxAdapter(child: CustomCategoryListView(),),








        ],
        ),
      ),
    );
  }
}




