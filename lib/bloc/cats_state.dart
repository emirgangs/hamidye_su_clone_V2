abstract class CatsState {
  const CatsState();
}

//burası ekranın ilk başlicağı anı verdiğimiz yer
class CatsInitial extends CatsState {
  const CatsInitial();
}

//burası ekranın yüklenme yeri
class CatsLoading extends CatsState {
  const CatsLoading();
}

//burasıda ekranın yüklenen yeri olcak başarılı
class CatsCompleted extends CatsState {
  //final List<Cat> response;
  const CatsCompleted();
}

class CatsError extends CatsState {
  final String message;
  const CatsError(this.message);
}
