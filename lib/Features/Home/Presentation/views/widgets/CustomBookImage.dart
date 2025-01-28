import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/AppRouters.dart';
import '../../../../../core/utils/assets.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key, required this.imgURL});

  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: GestureDetector(
              onTap: (){GoRouter.of(context).push(AppRouter.KBookDetails);},
            child: CachedNetworkImage(
              fit: BoxFit.fill,
                imageUrl: imgURL,
              errorWidget: (context,url,error)=>Icon(Icons.report_problem),
            )
          ),
      ),
    );
  }
}
