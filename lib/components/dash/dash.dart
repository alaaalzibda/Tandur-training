import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DashLine extends StatelessWidget {
  const DashLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.generate(
        150 ~/ 1,
        (int index) => Expanded(
          child: Container(
            color: index.isEven ? Colors.transparent : Color(AppColors.grey),
            height: 1,
          ),
        ),
      ),
    );
  }
}
