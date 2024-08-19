
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [IconButton(onPressed: (){
        FirebaseAuth.instance.signOut();
        customReplacementNavigation(context, "/SignIn");
      }, icon: Icon(Icons.logout))],),
      body: Center(child: Text("Home View"),),
    );
  }
}
