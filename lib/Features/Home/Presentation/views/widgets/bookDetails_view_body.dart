import 'package:booklt_store/Features/Home/Presentation/views/widgets/BookRate.dart';
import 'package:booklt_store/core/utils/AppRouters.dart';
import 'package:booklt_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/CustomButton.dart';
import 'BooksAction.dart';
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
              padding: EdgeInsets.symmetric(horizontal: width *.2),
              child: const BookCard(),
            ),
            SizedBox(height: 43,),
            Text("The Jungle Book" ,  style:Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height:6 ,),
            Opacity(
              opacity: .7,
              child: Text("Rudyard Kipling" ,
                  style:Styles.textStyle20.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500
              )),
            ),
            const SizedBox(height: 5,),
            BookRate(mainAxisAlignment: MainAxisAlignment.center,),
            const SizedBox(height: 30,),
            const BooksAction()
          ],
        ),
      ),
    );
  }
}

