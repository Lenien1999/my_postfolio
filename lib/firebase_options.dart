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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC9iEN6-ONtO973QYKO6y110agg4KxFg7Y',
    appId: '1:683383537366:web:781de9b7c5f69e1c869377',
    messagingSenderId: '683383537366',
    projectId: 'aminu-postfolio',
    authDomain: 'aminu-postfolio.firebaseapp.com',
    storageBucket: 'aminu-postfolio.appspot.com',
    measurementId: 'G-GN4V6QFW7E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDOWI_0rVyb7s3dp9JY1sRPgXm1TFIzCNk',
    appId: '1:683383537366:android:c09eea3cf07b8e52869377',
    messagingSenderId: '683383537366',
    projectId: 'aminu-postfolio',
    storageBucket: 'aminu-postfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1UTUydY83hAmL0g0W_2vCCOD2ByYzOI8',
    appId: '1:683383537366:ios:e140a66876d3ac5b869377',
    messagingSenderId: '683383537366',
    projectId: 'aminu-postfolio',
    storageBucket: 'aminu-postfolio.appspot.com',
    iosBundleId: 'com.example.aminuOlamidePostfolio',
  );
}