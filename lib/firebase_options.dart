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
    apiKey: 'AIzaSyBipyhP7UnjSQJk9Sc732dblvBQEdcF7GQ',
    appId: '1:995038545288:web:5c91e96290376c6d2f663d',
    messagingSenderId: '995038545288',
    projectId: 'nurture-nest-29fb4',
    authDomain: 'nurture-nest-29fb4.firebaseapp.com',
    storageBucket: 'nurture-nest-29fb4.appspot.com',
    measurementId: 'G-JJ9Q6S2YKP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSNQE72aWJVVmtrXZwkGuWf-DEEpnw_J8',
    appId: '1:995038545288:android:15ee320333f25eee2f663d',
    messagingSenderId: '995038545288',
    projectId: 'nurture-nest-29fb4',
    storageBucket: 'nurture-nest-29fb4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAg3syVvT1ijG_xFXIs4Ato0Ghsuh3MNd4',
    appId: '1:995038545288:ios:07405f16152c96de2f663d',
    messagingSenderId: '995038545288',
    projectId: 'nurture-nest-29fb4',
    storageBucket: 'nurture-nest-29fb4.appspot.com',
    iosBundleId: 'com.example.nurturenest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAg3syVvT1ijG_xFXIs4Ato0Ghsuh3MNd4',
    appId: '1:995038545288:ios:326473a42bb5e9832f663d',
    messagingSenderId: '995038545288',
    projectId: 'nurture-nest-29fb4',
    storageBucket: 'nurture-nest-29fb4.appspot.com',
    iosBundleId: 'com.example.nurturenest.RunnerTests',
  );
}
