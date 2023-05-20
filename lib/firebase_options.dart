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
    apiKey: 'AIzaSyBajcIIuJausJ4lO7Xt5GLxhSB62E-Amlc',
    appId: '1:375869926446:web:532414440a34033ec343bf',
    messagingSenderId: '375869926446',
    projectId: 'thesus-73db8',
    authDomain: 'thesus-73db8.firebaseapp.com',
    storageBucket: 'thesus-73db8.appspot.com',
    measurementId: 'G-5M3T2PF5YG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJVIcBkZO1h182Ycq3GEaza2IDFoQJDfw',
    appId: '1:375869926446:android:b7321504e3d84890c343bf',
    messagingSenderId: '375869926446',
    projectId: 'thesus-73db8',
    storageBucket: 'thesus-73db8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpXuaa38vrGsLBOfZWjd7WrY537E3Ny3U',
    appId: '1:375869926446:ios:3a98703cd34586c1c343bf',
    messagingSenderId: '375869926446',
    projectId: 'thesus-73db8',
    storageBucket: 'thesus-73db8.appspot.com',
    iosClientId: '375869926446-smg1knlsc64iv6kpekf9vcbmlp279q4p.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpXuaa38vrGsLBOfZWjd7WrY537E3Ny3U',
    appId: '1:375869926446:ios:3a98703cd34586c1c343bf',
    messagingSenderId: '375869926446',
    projectId: 'thesus-73db8',
    storageBucket: 'thesus-73db8.appspot.com',
    iosClientId: '375869926446-smg1knlsc64iv6kpekf9vcbmlp279q4p.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled3',
  );
}
