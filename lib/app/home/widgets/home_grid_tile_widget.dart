import 'package:flutter/material.dart';
import 'package:todo/app/home/widgets/home_edit_wigdet.dart';
import 'package:todo/app/home/widgets/home_notes_widget.dart';

import 'package:todo/constant/app_box_decoration.dart';
import 'package:todo/constant/app_paddings.dart';
import 'package:todo/constant/app_sized_box.dart';
import 'package:todo/data/model/home_model.dart';

class HomeGridTileWidget extends StatelessWidget {
  final String datas;
  final String title;
  final int index;
  final List<HomeModel> homeModel;
  const HomeGridTileWidget({
    Key? key,
    required this.datas,
    required this.index,
    required this.homeModel, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.all12,
      margin: AppPaddings.all12,
      decoration: AppBoxDecoration.noteBoxes,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeEditWidget(title: title,),
          AppSizedBox.h10,
          HomeNotesWidget(
            datas: datas,
          )
        ],
      ),
    );
  }
}
