import 'package:booklt_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorwidget extends StatelessWidget {
  const CustomErrorwidget({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errMessage,style: Styles.textStyle18,));
  }
}
