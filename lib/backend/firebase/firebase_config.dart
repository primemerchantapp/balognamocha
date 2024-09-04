import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCMc6rfR2TRANtWNhg31FdXKDszD16hXWI",
            authDomain: "tudds-ccd0wn.firebaseapp.com",
            projectId: "tudds-ccd0wn",
            storageBucket: "tudds-ccd0wn.appspot.com",
            messagingSenderId: "786974954352",
            appId: "1:786974954352:web:2971bceb02fb8e6b9bb5b5"));
  } else {
    await Firebase.initializeApp();
  }
}
