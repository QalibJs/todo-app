import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/cubit/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoading());

  void getTodos() async {
    // emit(HomeLoading());
    // final todoGetService = await HomeGetService.getDatas();
    // if (todoGetService is TodoModel) {
    //   emit(HomeSuccess());
    // }else{
    //   emit(HomeError())
    // }
  }
}
