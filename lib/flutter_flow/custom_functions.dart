import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? clothingGenerator(DocumentReference? userRef) {
  var random = new math.Random();
  var clothingListTops = [];
  var clothingListBottoms = [];
  //int i = 0;
  //print(clothingListTops.length);
  FirebaseFirestore.instance
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
  FirebaseFirestore.instance
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
  //print(clothingListTops.length);

  //debugPrint("Hello world");
  var topIndex = random.nextInt(clothingListTops.length + 1);
  //var bottomIndex = math.Random(clothingListBottoms.length - 1) as int;

  //debugPrint("Hello world");
  var randomClothing = clothingListTops[topIndex];

  //var randomClothing = <String>[];
  //randomClothing.add(clothingListTops[topIndex]);
  //randomClothing.add(clothingListBottoms[bottomIndex]);
  debugPrint("Hello world");
  return randomClothing;
}
