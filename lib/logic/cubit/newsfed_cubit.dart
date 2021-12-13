import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:day8/model/newsfeeds.model.dart';
import 'package:day8/repo/newsfee_repo.dart';
import 'package:equatable/equatable.dart';

part 'newsfed_state.dart';

class NewsfeedCubit extends Cubit<NewsfeedState> {
  NewsfeedCubit() : super(const NewsfeedState(status: Status.initial));

  getNewsFeedData() async {
    log("message");
    if (isLoading) return;

    emit(const NewsfeedState(status: Status.initial));
    try {
      final data = await NewsfeedRepo().getData();

      //log(data.runtimeType.toString());

      emit(const NewsfeedState(
        status: Status.loaded,
      ));
    } catch (e) {
      emit(const NewsfeedState(status: Status.error));
    }
  }

  bool get isLoading => state.status == Status.loading;
}
