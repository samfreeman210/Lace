// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

Future<String?> clothinGen(DocumentReference? userRef) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  var random = new math.Random();
  var clothingListTops = [];
  var clothingListBottoms = [];
  //int i = 0;
  //print(clothingListTops.length);
  await FirebaseFirestore.instance
      .collection('closet')
      .where('closet_user', isEqualTo: userRef)
      .where('clothing_type', isEqualTo: 'Tops')
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      debugPrint(doc['clothing_image']);
      debugPrint("Hello world");
      clothingListTops.add(doc['clothing_image']);
      print(clothingListTops.length);
    });
    print(clothingListTops.length);
  });
  //debugPrint("Hello world");
  //i = 0;
  await FirebaseFirestore.instance
      .collection('closet')
      .where('closet_user', isEqualTo: userRef)
      .where('clothing_type', isEqualTo: 'Bottoms')
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      //debugPrint("Hello world");
      clothingListBottoms.add(doc["clothing_image"]);
    });
  });
  print(clothingListTops.length);

  //debugPrint("Hello world");

  var topIndex = random.nextInt(clothingListTops.length);
  //var bottomIndex = math.Random(clothingListBottoms.length - 1) as int;

  //debugPrint("Hello world");
  var randomClothing = clothingListTops[topIndex];

  //var randomClothing = <String>[];
  //randomClothing.add(clothingListTops[topIndex]);
  //randomClothing.add(clothingListBottoms[bottomIndex]);
  debugPrint(randomClothing);
  return randomClothing;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
