import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/createcomment/createcomment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<dynamic> postRecords = [];
  void addToPostRecords(dynamic item) => postRecords.add(item);
  void removeFromPostRecords(dynamic item) => postRecords.remove(item);
  void removeAtIndexFromPostRecords(int index) => postRecords.removeAt(index);
  void insertAtIndexInPostRecords(int index, dynamic item) =>
      postRecords.insert(index, item);
  void updatePostRecordsAtIndex(int index, Function(dynamic) updateFn) =>
      postRecords[index] = updateFn(postRecords[index]);

  String? imageRecords;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
