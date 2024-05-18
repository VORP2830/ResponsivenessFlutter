import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reponsividade/breakpoints.dart';
import 'package:reponsividade/widgets/course_item_widget.dart';

class CoursesSectionWidget extends StatelessWidget {
  const CoursesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItemWidget();
          },
        );
      },
    );
  }
}
