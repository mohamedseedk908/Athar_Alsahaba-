import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';

class AltharAlsahaba extends StatelessWidget {
  const AltharAlsahaba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
