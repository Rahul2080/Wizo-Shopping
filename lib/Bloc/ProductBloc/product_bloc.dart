import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:wizoshopping/Repsitory/Api/2nd_Api.dart';
import 'package:wizoshopping/Repsitory/ModelClass/AmazonModel.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  late AmazonModel amazonModel;
  productApi ProductApi =productApi();
  ProductBloc() : super(ProductInitial()) {
    on<FetchProduct>((event, emit) async{
      emit(ProductBlocLoading());
      try{amazonModel = await ProductApi.getproduct(event.id);
      emit(ProductBlocLoaded());
      }
          catch(a){emit(ProductBlocError());}
    });
  }
}
