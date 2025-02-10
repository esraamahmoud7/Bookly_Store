import 'package:flutter/material.dart';
import '../../../../../core/functions/launchUrl.dart';
import '../../../../../core/models/book_model/book_model.dart';
import '../../../../../core/widgets/CustomButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
           const Expanded(
              child: Custombutton(
            text: "Free",
            backgroundColor: Color(0xffffffff),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            textColor: Color(0xff000000),
          )),
          Expanded(
              child: Custombutton(
                  text: getText(book),
                  backgroundColor: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  textColor: Color(0xffffffff),
                  onPressed:() async
                  {
                    launchCustomerUrl(context,book.volumeInfo.previewLink);
                  },
          ))
        ],
      ),
    );
  }

  String getText(BookModel book)
  {
    if(book.volumeInfo.previewLink == null)
      {
        return "Not Available";
      }
    else
      {
        return "Free Preview";
      }
  }
}
