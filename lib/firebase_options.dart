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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCX4wEiyb4F0z72pba_2AhIOH94eR04NEE',
    appId: '1:977817941000:web:5449dc03a789cf66368dbd',
    messagingSenderId: '977817941000',
    projectId: 'plfadminpanel',
    authDomain: 'plfadminpanel.firebaseapp.com',
    storageBucket: 'plfadminpanel.appspot.com',
    measurementId: 'G-4432HJ0Y5F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGcI-DF4cLB2MHDkSv2TMpL7ViuiTW9VA',
    appId: '1:977817941000:android:9f70a32f5b83fb3f368dbd',
    messagingSenderId: '977817941000',
    projectId: 'plfadminpanel',
    storageBucket: 'plfadminpanel.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJvjQt5EfiVA8QZ3VzKN32W0FJAg69Lpw',
    appId: '1:977817941000:ios:771e409f35150358368dbd',
    messagingSenderId: '977817941000',
    projectId: 'plfadminpanel',
    storageBucket: 'plfadminpanel.appspot.com',
    iosClientId: '977817941000-efb790bvn4s8u3uaamtkvngssofhasv3.apps.googleusercontent.com',
    iosBundleId: 'ita.plf.app',
  );
}