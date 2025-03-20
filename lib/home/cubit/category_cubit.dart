import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState(showcat: true));

   void changeshowcat(bool show){
        emit(CategoryState(showcat: show));
   }

   bool returnshowcat(){
     return state.showcat;
   }

}
