import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../widgets/wecome_text_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(actions: [IconButton(onPressed: (){
          }, icon: Icon(Icons.logout))],),
          body: Center(child: Text("Home View"),),

    );
  }
}
