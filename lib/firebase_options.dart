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
    apiKey: 'AIzaSyAB9hG5yY3CMUTy6vfKeCZfD61YBn0AU7E',
    appId: '1:446276719557:web:bfca1b8f14f591418bb1ac',
    messagingSenderId: '446276719557',
    projectId: 'bankwebui',
    authDomain: 'bankwebui.firebaseapp.com',
    storageBucket: 'bankwebui.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnNLeBgBffMXGDURkdQOzqCDT1mtQ8bZc',
    appId: '1:446276719557:android:ab94126238ee1b2f8bb1ac',
    messagingSenderId: '446276719557',
    projectId: 'bankwebui',
    storageBucket: 'bankwebui.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB52LXxKahW2MBQTo8qFV59czjTKwREYV4',
    appId: '1:446276719557:ios:d5b96868c0c0dd1e8bb1ac',
    messagingSenderId: '446276719557',
    projectId: 'bankwebui',
    storageBucket: 'bankwebui.appspot.com',
    iosClientId: '446276719557-klc05lp9etshkic16mtcs5gg7fubsgdf.apps.googleusercontent.com',
    iosBundleId: 'com.example.bankwebui',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB52LXxKahW2MBQTo8qFV59czjTKwREYV4',
    appId: '1:446276719557:ios:e2b019129c969c3d8bb1ac',
    messagingSenderId: '446276719557',
    projectId: 'bankwebui',
    storageBucket: 'bankwebui.appspot.com',
    iosClientId: '446276719557-r1hu2b9e1bktfnafivshofps8o908jmo.apps.googleusercontent.com',
    iosBundleId: 'com.example.bankwebui.RunnerTests',
  );
}