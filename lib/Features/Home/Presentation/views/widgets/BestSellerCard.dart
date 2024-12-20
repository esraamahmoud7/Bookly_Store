import 'package:booklt_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'BookDataCard.dart';


class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:125 ,
        child: Row(
            children: [
            AspectRatio(
                aspectRatio: 2.5/4,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(AssetsData.testImage)
                      )
                  ),
                ),
            ),
            SizedBox(width: 30,),
            BookDataCard()
          ],
        ),
    );
  }
}
