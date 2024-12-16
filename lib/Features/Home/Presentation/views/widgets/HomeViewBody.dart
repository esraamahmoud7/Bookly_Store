import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'BestSellerCard.dart';
import 'BookCard.dart';
import 'CustomAppBar.dart';
import 'ListView.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          customAppBar(),
          CardListView(),
          SizedBox(height: 50,),
          Align(
            alignment: Alignment.centerLeft,
              child: Text("Best Seller",style: Styles.textStyle18,)
          ),
          SizedBox(height:20 ,),
          BestSellerCard()
        ],
      ),
    );
  }
}
