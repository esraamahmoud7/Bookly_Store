import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRouters.dart';
import '../../../../../core/utils/assets.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key, required this.imgURL});

  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
        child: GestureDetector(
            onTap: (){GoRouter.of(context).push(AppRouter.KBookDetails);},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imgURL))),
          ),
        ),
    );
  }
}
