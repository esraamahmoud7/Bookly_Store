import 'package:flutter/material.dart';

import 'BookCard.dart';
import 'CustomAppBar.dart';
import 'ListView.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(),
        CardListView()
      ],
    );
  }
}
