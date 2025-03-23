import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryState(showcat: true));
  final controller = CarouselSliderController();

   void changeshowcat(bool show){
        emit(CategoryState(showcat: show));
   }

   bool returnshowcat(){
     return state.showcat;
   }

   void changeindexres(int index){
    emit(CategoryState(showcat: state.showcat,activeIndex: index));
   }

}
