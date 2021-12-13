part of 'newsfed_cubit.dart';

enum Status {
  initial,
  loading,
  loaded,
  error,
}

class NewsfeedState extends Equatable {
  const NewsfeedState({required this.status, this.newsfeedModle});

  final Status status;
  final NewsfeedModle? newsfeedModle;

  @override
  List<Object?> get props => [status, newsfeedModle];
}
