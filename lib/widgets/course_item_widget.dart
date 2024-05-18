import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItemWidget extends StatelessWidget {
  const CourseItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://source.unsplash.com/random/300x200',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Expanded(
          child: AutoSizeText(
            'Criação de Apps Android e IOS com Flutter - Crie 16 Apps',
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        const AutoSizeText(
          'Daniel Ciolfi',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
        const AutoSizeText(
          'R\$ 22,90',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
