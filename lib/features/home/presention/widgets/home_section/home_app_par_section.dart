import 'package:flutter/material.dart';
import '../home_app_bar_widget.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 72,),
        CustomHomeViewAppBar(),
        SizedBox(height: 37,),
      ],
    );
  }
}