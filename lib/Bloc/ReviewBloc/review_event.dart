part of 'review_bloc.dart';

@immutable
sealed class ReviewEvent {}
class FetchReview extends ReviewEvent{
  final String id;
  FetchReview ({required this.id});

}