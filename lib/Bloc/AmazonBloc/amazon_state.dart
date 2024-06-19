part of 'amazon_bloc.dart';

@immutable
sealed class AmazonState {}
final class AmazonInitial extends AmazonState {}
class amazonBlocLoading extends AmazonState{}
class amazonBlocLoaded extends AmazonState{}
class amazonBlocError extends AmazonState{}