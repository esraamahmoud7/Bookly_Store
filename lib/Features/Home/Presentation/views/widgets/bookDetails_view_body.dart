import 'package:booklt_store/core/utils/AppRouters.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'CustomBookImage.dart';
import 'CustomAppBarBookDetails.dart';

class bookDetailsViewBody extends StatelessWidget {
  const bookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25 ),
        child: Column(
          children: [
            const SafeArea(child: CustomAppBarBookDetails()),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width *.17),
              child: const BookCard(),
            )
          ],
        ),
      ),
    );
  }
}



