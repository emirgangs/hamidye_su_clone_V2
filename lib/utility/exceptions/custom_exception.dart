class FirebaseCustomException implements Exception {
  final String describtion;

  FirebaseCustomException(this.describtion);
  @override
  String toString() {
    return '$this $describtion';
  }
}
