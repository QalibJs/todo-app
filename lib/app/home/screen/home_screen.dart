import 'package:flutter/material.dart';
import '../widgets/home_grid_view_widget.dart';
import '../widgets/home_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: const Column(
        children: [
          HomeHeaderWidget(),
          HomeGridViewWidget(),
        ],
      ),
    );
  }
}
