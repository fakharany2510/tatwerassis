import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatwerassis/business_logic/states/app_states.dart';
class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);


  int currentIndex=0;
  void navigateScreen(int index,context){
    currentIndex=index;
      emit(NavigateScreenState());
  }
}