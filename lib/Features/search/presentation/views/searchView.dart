import 'package:booklt_store/Features/search/presentation/views/widgets/seatchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SearchViewBody()
      ),
    );
  }
}
