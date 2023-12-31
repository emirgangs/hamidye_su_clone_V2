// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDcLvVyYa85L_0bB6l3EopGMZB-9sux7UE',
    appId: '1:897019986195:web:833c0bb69f53bfa2f91ae6',
    messagingSenderId: '897019986195',
    projectId: 'bloc-and-hamidye-app',
    authDomain: 'bloc-and-hamidye-app.firebaseapp.com',
    storageBucket: 'bloc-and-hamidye-app.appspot.com',
    measurementId: 'G-NV6GHZNNJ5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSNde_p1SLUJa3EangWsSuMfNpigCEa8Q',
    appId: '1:897019986195:android:cd4c36062843c80af91ae6',
    messagingSenderId: '897019986195',
    projectId: 'bloc-and-hamidye-app',
    storageBucket: 'bloc-and-hamidye-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkQgy0SFNxHfOifJdeGhnGP-MdDZgHpII',
    appId: '1:897019986195:ios:69c5d38c9a177bb1f91ae6',
    messagingSenderId: '897019986195',
    projectId: 'bloc-and-hamidye-app',
    storageBucket: 'bloc-and-hamidye-app.appspot.com',
    iosBundleId: 'com.example.blocTryExample17092023',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkQgy0SFNxHfOifJdeGhnGP-MdDZgHpII',
    appId: '1:897019986195:ios:3c56c57c9d1f6e11f91ae6',
    messagingSenderId: '897019986195',
    projectId: 'bloc-and-hamidye-app',
    storageBucket: 'bloc-and-hamidye-app.appspot.com',
    iosBundleId: 'com.example.blocTryExample17092023.RunnerTests',
  );
}
