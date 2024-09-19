// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD4BEudt4uz5FZhYTYUysiYP33kAQ0oR_A',
    appId: '1:228947636832:web:b5e672defd59fd87bfc905',
    messagingSenderId: '228947636832',
    projectId: 'yemekt',
    authDomain: 'yemekt.firebaseapp.com',
    storageBucket: 'yemekt.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9c2pCGD4K1qrnKzWSqhMiyaUYtcvKBiY',
    appId: '1:228947636832:android:0da1f8862db77277bfc905',
    messagingSenderId: '228947636832',
    projectId: 'yemekt',
    storageBucket: 'yemekt.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIrrbHVNWT8-lxxfoNNsUikR8Y4nFCM3k',
    appId: '1:228947636832:ios:a6a64802ce90cfc1bfc905',
    messagingSenderId: '228947636832',
    projectId: 'yemekt',
    storageBucket: 'yemekt.appspot.com',
    iosBundleId: 'com.example.yemekSoyleApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIrrbHVNWT8-lxxfoNNsUikR8Y4nFCM3k',
    appId: '1:228947636832:ios:a6a64802ce90cfc1bfc905',
    messagingSenderId: '228947636832',
    projectId: 'yemekt',
    storageBucket: 'yemekt.appspot.com',
    iosBundleId: 'com.example.yemekSoyleApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD4BEudt4uz5FZhYTYUysiYP33kAQ0oR_A',
    appId: '1:228947636832:web:e709ef7bba9b4dc2bfc905',
    messagingSenderId: '228947636832',
    projectId: 'yemekt',
    authDomain: 'yemekt.firebaseapp.com',
    storageBucket: 'yemekt.appspot.com',
  );
}
