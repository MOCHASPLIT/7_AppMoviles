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
    apiKey: 'AIzaSyDbpM4o5e7ygh8nLmwJu-QFvXo_qh58T5I',
    appId: '1:398041721977:web:eda20dac92f724144a78a8',
    messagingSenderId: '398041721977',
    projectId: 'fir-flutter-codelab-27911',
    authDomain: 'fir-flutter-codelab-27911.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-27911.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2bhkCSOgjVivSvaWEf8dVurR-ZQj1xvs',
    appId: '1:398041721977:android:874e3bd35c8a7d074a78a8',
    messagingSenderId: '398041721977',
    projectId: 'fir-flutter-codelab-27911',
    storageBucket: 'fir-flutter-codelab-27911.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOQ0g0TvLUF3ge10lD8n4qcNZyw0HtVWo',
    appId: '1:398041721977:ios:81ba63aa066357134a78a8',
    messagingSenderId: '398041721977',
    projectId: 'fir-flutter-codelab-27911',
    storageBucket: 'fir-flutter-codelab-27911.appspot.com',
    iosClientId: '398041721977-c4e53csrubse3e3l3sbbe593jfv2bicb.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCOQ0g0TvLUF3ge10lD8n4qcNZyw0HtVWo',
    appId: '1:398041721977:ios:81ba63aa066357134a78a8',
    messagingSenderId: '398041721977',
    projectId: 'fir-flutter-codelab-27911',
    storageBucket: 'fir-flutter-codelab-27911.appspot.com',
    iosClientId: '398041721977-c4e53csrubse3e3l3sbbe593jfv2bicb.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
