import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reponsividade/widgets/web_app_bar_responsive_content_widget.dart';

class WebAppBarWidget extends StatelessWidget {
  const WebAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContentWidget(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 32),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Fazer login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
