import 'package:flutter/material.dart';
import 'package:reponsividade/widgets/mobile_app_bar_widget.dart';
import 'package:reponsividade/widgets/web_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBarWidget(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBarWidget()),
          drawer: Drawer(),
        );
      },
    );
  }
}
