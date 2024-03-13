import 'package:fast_campus/instagram_clone/widget/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstagramClone extends StatefulWidget {
  const InstagramClone({super.key});

  @override
  State<InstagramClone> createState() => _InstagramCloneState();
}

class _InstagramCloneState extends State<InstagramClone> {
  late int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index == 0 ? _appBar() : null,
      body: InstagramBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int newIndex) => setState(() {
          index = newIndex;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 28),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 28),
            label: "Search",
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Instagram",
        style: GoogleFonts.lobsterTwo(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_outline, size: 32),
          onPressed: () {
            print("tab favorite_outline");
          },
        ),
        IconButton(
          icon: const Icon(CupertinoIcons.paperplane, size: 32),
          onPressed: () {
            print("tab paperplane");
          },
        ),
      ],
      centerTitle: false,
    );
  }
}
