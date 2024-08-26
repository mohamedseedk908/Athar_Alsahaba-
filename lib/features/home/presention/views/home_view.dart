import 'package:flutter/material.dart';
import '../widgets/home_section/historical_character_section.dart';
import '../widgets/home_section/historical_period_section.dart';
import '../widgets/home_section/historical_souvenirs_section.dart';
import '../widgets/home_section/home_app_par_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child:  Scaffold(
        body:  CustomScrollView(slivers:  [
          SliverToBoxAdapter(child: HomeAppBarSection(),),
          SliverToBoxAdapter(child: HistoricalPeriodSection(),),
          SliverToBoxAdapter(child: HistoricalCharactersSection(),),
          SliverToBoxAdapter(child: HistoricalSouvenirsSection(),),
        ],
        ),
      ),
    );
  }
}






