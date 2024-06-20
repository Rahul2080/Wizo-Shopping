part of 'review_bloc.dart';

@immutable
sealed class ReviewState {}

final class ReviewInitial extends ReviewState {}
class ReviewBlocLoading extends ReviewState {}
class ReviewBlocLoaded extends ReviewState {}
class ReviewBlocError extends ReviewState {}