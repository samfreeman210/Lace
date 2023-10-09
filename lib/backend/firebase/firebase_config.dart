import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBaFDVBrMWdxk8G_GPhXOr4mTxK0LhI83I",
            authDomain: "lace-541ee.firebaseapp.com",
            projectId: "lace-541ee",
            storageBucket: "lace-541ee.appspot.com",
            messagingSenderId: "97939010387",
            appId: "1:97939010387:web:4dcd5947da04f2eaaf67a6",
            measurementId: "G-5DTKX9BC5Y"));
  } else {
    await Firebase.initializeApp();
  }
}
