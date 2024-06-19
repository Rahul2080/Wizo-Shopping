import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wizoshopping/Repsitory/Api/shopping_api.dart';
import 'package:wizoshopping/Repsitory/ModelClass/AmazonModel.dart';

part 'amazon_event.dart';
part 'amazon_state.dart';

class AmazonBloc extends Bloc<AmazonEvent, AmazonState> {
  late AmazonModel amazonModel;
  ShoppingApi shoppingApi=ShoppingApi();
  AmazonBloc() : super(AmazonInitial()) {
    on<AmazonShopEvent>((event, emit)async {
      emit(amazonBlocLoading());
      try{
        amazonModel = await shoppingApi.getShopping(event.forAll,event.searchKey);
        emit(amazonBlocLoaded());
      }
          catch(a){emit (amazonBlocError());

          }
    });
  }
}
