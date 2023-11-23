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
    apiKey: 'AIzaSyBCSTfKdnsX33DvODPjjCzEv1E7WqH3spU',
    appId: '1:359347542118:web:f7fae56ea29152f69735a7',
    messagingSenderId: '359347542118',
    projectId: 'volkanprojem',
    authDomain: 'volkanprojem.firebaseapp.com',
    storageBucket: 'volkanprojem.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXrFTd48_G5NZncxA0ASe0hTEc5bjU5uw',
    appId: '1:359347542118:android:c16dd84ed84b60ea9735a7',
    messagingSenderId: '359347542118',
    projectId: 'volkanprojem',
    storageBucket: 'volkanprojem.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfo5kur-ZVx1pV0gRso5R7X-FT1VFkTHc',
    appId: '1:359347542118:ios:19c9fef9da5ad8279735a7',
    messagingSenderId: '359347542118',
    projectId: 'volkanprojem',
    storageBucket: 'volkanprojem.appspot.com',
    iosClientId: '359347542118-q16an4pc71190986b19nq6h8kav045b4.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfo5kur-ZVx1pV0gRso5R7X-FT1VFkTHc',
    appId: '1:359347542118:ios:19c9fef9da5ad8279735a7',
    messagingSenderId: '359347542118',
    projectId: 'volkanprojem',
    storageBucket: 'volkanprojem.appspot.com',
    iosClientId: '359347542118-q16an4pc71190986b19nq6h8kav045b4.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled',
  );
}