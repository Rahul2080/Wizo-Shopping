import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repsitory/Api/review_api.dart';
import '../../Repsitory/ModelClass/ReveiwModel.dart';

part 'review_event.dart';
part 'review_state.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  late ReveiwModel reveiwModel;
  ReveiwApi reveiwApi =ReveiwApi();
  ReviewBloc() : super(ReviewInitial()) {
    on<FetchReview>((event, emit)async {
      emit(ReviewBlocLoading());
      try{
        reveiwModel = await reveiwApi.getproduct(event.id);
        emit(ReviewBlocLoaded());
      }
          catch(a){emit(ReviewBlocError());

          }

      });
  }
}
