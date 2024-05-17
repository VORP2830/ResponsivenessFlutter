import 'package:flutter/material.dart';

class MobileAppBarWidget extends StatelessWidget {
  const MobileAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'Flutter',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart, color: Colors.white),
        ),
      ],
    );
  }
}
