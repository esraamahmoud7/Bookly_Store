import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDataCard extends StatelessWidget {
  const BookDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*.5,
            child: Text("The jungle Book",
              style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
        ),
        const SizedBox(height: 3,),
        Text("Rudyard Kipling",style: Styles.textStyle14,),
        SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("39\$",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
            SizedBox(width: 60,),
            Text("3",style: Styles.textStyle20,)
          ],
        )
      ],
    );
  }
}
