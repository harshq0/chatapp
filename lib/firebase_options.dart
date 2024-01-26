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
    apiKey: 'AIzaSyAkwufEUQDpu9oPCzMmsTZU2YdJyUtglpM',
    appId: '1:218782728:web:83abd7b4224bb3a2a445bd',
    messagingSenderId: '218782728',
    projectId: 'chata-7b0f6',
    authDomain: 'chata-7b0f6.firebaseapp.com',
    storageBucket: 'chata-7b0f6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFLZ-jCo_afZze5-1nIubQWBDX3lWTaY0',
    appId: '1:218782728:android:0790421f975c2e75a445bd',
    messagingSenderId: '218782728',
    projectId: 'chata-7b0f6',
    storageBucket: 'chata-7b0f6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQesfQe__QhsA9sdHQjUzt8k5yKQvv8iE',
    appId: '1:218782728:ios:ceb4f9176692753ba445bd',
    messagingSenderId: '218782728',
    projectId: 'chata-7b0f6',
    storageBucket: 'chata-7b0f6.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQesfQe__QhsA9sdHQjUzt8k5yKQvv8iE',
    appId: '1:218782728:ios:90a0d65bf00f0cdca445bd',
    messagingSenderId: '218782728',
    projectId: 'chata-7b0f6',
    storageBucket: 'chata-7b0f6.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}