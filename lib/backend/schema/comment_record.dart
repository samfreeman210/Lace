import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentRecord extends FirestoreRecord {
  CommentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comment_user" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "Time_of_comment" field.
  DateTime? _timeOfComment;
  DateTime? get timeOfComment => _timeOfComment;
  bool hasTimeOfComment() => _timeOfComment != null;

  void _initializeFields() {
    _commentUser = snapshotData['comment_user'] as DocumentReference?;
    _comment = snapshotData['comment'] as String?;
    _post = snapshotData['post'] as DocumentReference?;
    _timeOfComment = snapshotData['Time_of_comment'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comment');

  static Stream<CommentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentRecord.fromSnapshot(s));

  static Future<CommentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentRecord.fromSnapshot(s));

  static CommentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentRecordData({
  DocumentReference? commentUser,
  String? comment,
  DocumentReference? post,
  DateTime? timeOfComment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment_user': commentUser,
      'comment': comment,
      'post': post,
      'Time_of_comment': timeOfComment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentRecordDocumentEquality implements Equality<CommentRecord> {
  const CommentRecordDocumentEquality();

  @override
  bool equals(CommentRecord? e1, CommentRecord? e2) {
    return e1?.commentUser == e2?.commentUser &&
        e1?.comment == e2?.comment &&
        e1?.post == e2?.post &&
        e1?.timeOfComment == e2?.timeOfComment;
  }

  @override
  int hash(CommentRecord? e) => const ListEquality()
      .hash([e?.commentUser, e?.comment, e?.post, e?.timeOfComment]);

  @override
  bool isValidKey(Object? o) => o is CommentRecord;
}
