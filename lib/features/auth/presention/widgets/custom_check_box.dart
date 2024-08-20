import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth/auth_cubit.dart';


class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
  });

  @override
  State<CustomCheckbox> createState() => _TeState();
}

class _TeState extends State<CustomCheckbox> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (newvalue) {
          setState(() {
            value = newvalue!;
            BlocProvider.of<AuthCubit>(context).updateTerConditionCheckBox(newvalue: newvalue);
          });
        });
  }
}
