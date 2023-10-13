import 'package:bloc/bloc.dart';
import 'cats_state.dart';

class CatsCubit extends Cubit<CatsState> {
  //final CatsReposityory _catsReposityory;
  //süperden önce verdiğimiz yere de servisten çektiğimiz
  //abstract class'ımızı veriyoruz yüklendikten sonra oraya atsın diye
  //super ile ilk nerden başlicaksak bunu veriyoruz
  CatsCubit(/*this._catsReposityory*/) : super(const CatsInitial());
  //burada try catch ile async şekilde emitlerimizi
  //kontrol ediyoruz
  Future<void> getCats() async {
    try {
      emit(const CatsLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(const CatsCompleted());
    } catch (e) {
      emit(const CatsError('Hata Yakalandi State\'te'));
    }
  }
}
