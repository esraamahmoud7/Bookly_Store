import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class similarBooksListView extends StatelessWidget {
  const similarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BookImageItem(imgURL: 'https://th.bing.com/th/id/R.e08f8b00704d429c90e151bad272dc28?rik=BwGqsvKm%2fKWwoQ&pid=ImgRaw&r=0',),
          );
        },
      ),
    );
  }
}
