part of 'amazon_bloc.dart';

@immutable
sealed class AmazonEvent {}
class AmazonShopEvent extends AmazonEvent{
  final bool forAll;
  final String searchKey;
  AmazonShopEvent({required this.searchKey,required this.forAll});
}