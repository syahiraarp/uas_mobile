part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}

class LoadingState extends PostState {}

class LoadedState extends PostState {
  final List<Post> posts;
  LoadedState({
    required this.posts,
  });
}

class FailureLoadState extends PostState {
  final String message;
  FailureLoadState({
    required this.message,
  });
}