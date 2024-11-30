import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDataCard extends StatelessWidget {
  const BookDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("The jungle Book",style: Styles.titleMedium,),
        SizedBox(height: 4,),
        Text("Rudyard Kipling",style: Styles.titleSmall,),
        SizedBox(height: 4,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("39\$",style: Styles.titleMedium,),
            SizedBox(width: 60,),
            Text("3",style: Styles.titleMedium,)
          ],
        )
      ],
    );
  }
}
