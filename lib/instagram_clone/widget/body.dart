import 'package:fast_campus/instagram_clone/widget/home_screen.dart';
import 'package:fast_campus/instagram_clone/widget/search_screen.dart';
import 'package:flutter/material.dart';

class InstagramBody extends StatelessWidget {
  final int index;
  const InstagramBody({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return HomeScreen();
    }
    return const SearchScreen();
  }
}
