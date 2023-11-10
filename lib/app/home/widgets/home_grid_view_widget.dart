import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'home_empty_data_widget.dart';
import 'home_grid_tile_widget.dart';
import '../../note/screens/note_screen.dart';
import '../../../constant/app_navigator.dart';
import '../../../cubit/notes/note_cubit.dart';
import '../../../data/model/home_model.dart';

class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomeModel> homeModel = HomeModel.model;
    NoteCubit noteCubit = context.watch<NoteCubit>();
    return homeModel.isEmpty
        ? const HomeEmptyDataWidget()
        : Expanded(
            child: MasonryGridView.builder(
              itemCount: homeModel.length,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final datas = homeModel[index];
                return GestureDetector(
                  onTap: () {
                    noteCubit.noteController.text = datas.notes;
                    noteCubit.titleController.text = datas.title;
                    AppNavigators.go(context, const NoteScreen());
                  },
                  child: HomeGridTileWidget(
                    datas: datas.notes,
                    index: index,
                    homeModel: homeModel,
                    title: datas.title,
                  ),
                );
              },
            ),
          );
  }
}
