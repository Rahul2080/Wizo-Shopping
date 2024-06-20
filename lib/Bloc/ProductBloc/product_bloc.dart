import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:wizoshopping/Repsitory/Api/2nd_Api.dart';
import 'package:wizoshopping/Repsitory/ModelClass/AmazonModel.dart';
import 'package:wizoshopping/Repsitory/ModelClass/ProductModel.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  late ProductModel productModel;
  ProductApi productApi =ProductApi();
  ProductBloc() : super(ProductInitial()) {
    on<FetchProduct>((event, emit) async{
      emit(ProductBlocLoading());
      try{
        productModel = await productApi.getproduct(event.id);
        print("hi"+productModel.data!.productPhotos!.length.toString());
      emit(ProductBlocLoaded());
      } catch(a){emit(ProductBlocError());}
    });
  }
}
