import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDataCard extends StatelessWidget {
  const BookDataCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("39\$",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
              Spacer(),
              // SizedBox(width: 60,),
              // Icon(Icons.star,color: Colors.yellow,),
              const Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 14,),
              const SizedBox(width: 6,),
              const Text("3.8",style: Styles.textStyle16,),
              const SizedBox(width: 6,),
              Text("(12345)",style: Styles.textStyle14.copyWith(color: Color(0xff707070)),)
            ],
          )
        ],
      ),
    );
  }
}
