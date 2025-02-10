import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/utils/AppRouters.dart';
import 'cachedNetwork.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key, required this.book});


  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: GestureDetector(
              onTap: (){GoRouter.of(context).push(AppRouter.KBookDetails,extra: book );},
            child: cachedNetwork(imgURL: book.volumeInfo.imageLinks?.thumbnail ??
                'https://th.bing.com/th/id/OIP.3Kt8D-Um9WqJO221WbKIvgAAAA?pid=ImgDet&w=206&h=154&c=7&dpr=1.3',)
          ),
      ),
    );
  }
}
