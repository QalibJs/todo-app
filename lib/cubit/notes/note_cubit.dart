import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteCubit extends Cubit<int> {
  NoteCubit() : super(0);

  TextEditingController noteController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  
  @override
  Future<void> close() {
    noteController.clear();
    return super.close();
  }
}
