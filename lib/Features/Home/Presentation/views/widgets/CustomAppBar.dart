import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55,bottom: 30),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 20),
          const Spacer(),
          IconButton(
              onPressed: (){},
              icon:const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
          ))
        ],
      ),
    );
  }
}
