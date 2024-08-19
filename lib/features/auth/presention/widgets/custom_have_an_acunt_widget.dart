import 'package:flutter/cupertino.dart';

class HaveAnAcountWidget extends StatelessWidget {
  const HaveAnAcountWidget({super.key, required this.text1, required this.text2, this.onTap});
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: text1),
          TextSpan(text: text2),
        ])),
      ),

    );
  }
}
