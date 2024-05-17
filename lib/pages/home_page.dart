import 'package:flutter/material.dart';
import 'package:reponsividade/breakpoints.dart';
import 'package:reponsividade/widgets/mobile_app_bar_widget.dart';
import 'package:reponsividade/widgets/web_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBrekPoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBarWidget(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBarWidget()),
          drawer:
              constraints.maxWidth < mobileBrekPoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 1400),
              child: ListView(),
            ),
          ),
        );
      },
    );
  }
}
