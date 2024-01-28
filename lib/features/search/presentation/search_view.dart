import 'package:flutter/material.dart';
import 'package:graduation_project/features/home/widgets/app_bar_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const CutomAppBarSearch(),
        centerTitle: true, 
        elevation: 2, 
        
        
      ) ,
      body: const SizedBox.shrink(),
    );
  }
}