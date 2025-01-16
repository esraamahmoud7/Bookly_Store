import 'package:booklt_store/core/utils/AppRouters.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'CustomAppBarBookDetails.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10 ),
      child: const Column(
        children: [
          SafeArea(child: CustomAppBarBookDetails()),
        ],
      ),
    );
  }
}



