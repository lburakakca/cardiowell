import 'package:flutter/material.dart';

import 'Colors.dart';


class RoundButton extends StatelessWidget {
  final textInput;
  const RoundButton({
    Key? key,
    required this.textInput,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors(textColor)),
        color: Colors.blue,
      ),
      child: Center(child: Text(textInput)),
    );
  }
}