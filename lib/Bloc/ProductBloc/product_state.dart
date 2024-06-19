part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}
class ProductBlocLoading extends ProductState{}
class ProductBlocLoaded extends ProductState{}
class ProductBlocError extends ProductState{}