import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class cachedNetwork extends StatelessWidget {
  const cachedNetwork({super.key, required this.imgURL});

  final String imgURL;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      imageUrl: imgURL,
      errorWidget: (context,url,error)=>Icon(Icons.report_problem),
    );
  }
}
