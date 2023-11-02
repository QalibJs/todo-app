import 'package:flutter/material.dart';
import 'package:todo/app/home/widgets/home_grid_view_widget.dart';
import '../widgets/home_header_widget.dart';
import '../../../constant/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
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
