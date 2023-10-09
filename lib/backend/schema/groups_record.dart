import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupsRecord extends FirestoreRecord {
  GroupsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "group_name" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  bool hasGroupName() => _groupName != null;

  // "group_posts" field.
  DocumentReference? _groupPosts;
  DocumentReference? get groupPosts => _groupPosts;
  bool hasGroupPosts() => _groupPosts != null;

  // "group_description" field.
  String? _groupDescription;
  String get groupDescription => _groupDescription ?? '';
  bool hasGroupDescription() => _groupDescription != null;

  // "group_avatar" field.
  String? _groupAvatar;
  String get groupAvatar => _groupAvatar ?? '';
  bool hasGroupAvatar() => _groupAvatar != null;

  // "group_user_list" field.
  List<DocumentReference>? _groupUserList;
  List<DocumentReference> get groupUserList => _groupUserList ?? const [];
  bool hasGroupUserList() => _groupUserList != null;

  // "group_owner" field.
  DocumentReference? _groupOwner;
  DocumentReference? get groupOwner => _groupOwner;
  bool hasGroupOwner() => _groupOwner != null;

  // "group_moderator" field.
  List<DocumentReference>? _groupModerator;
  List<DocumentReference> get groupModerator => _groupModerator ?? const [];
  bool hasGroupModerator() => _groupModerator != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _state = snapshotData['state'] as String?;
    _groupName = snapshotData['group_name'] as String?;
    _groupPosts = snapshotData['group_posts'] as DocumentReference?;
    _groupDescription = snapshotData['group_description'] as String?;
    _groupAvatar = snapshotData['group_avatar'] as String?;
    _groupUserList = getDataList(snapshotData['group_user_list']);
    _groupOwner = snapshotData['group_owner'] as DocumentReference?;
    _groupModerator = getDataList(snapshotData['group_moderator']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GroupsRecord.fromSnapshot(s));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GroupsRecord.fromSnapshot(s));

  static GroupsRecord fromSnapshot(DocumentSnapshot snapshot) => GroupsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GroupsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GroupsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GroupsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GroupsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGroupsRecordData({
  String? city,
  String? state,
  String? groupName,
  DocumentReference? groupPosts,
  String? groupDescription,
  String? groupAvatar,
  DocumentReference? groupOwner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'state': state,
      'group_name': groupName,
      'group_posts': groupPosts,
      'group_description': groupDescription,
      'group_avatar': groupAvatar,
      'group_owner': groupOwner,
    }.withoutNulls,
  );

  return firestoreData;
}

class GroupsRecordDocumentEquality implements Equality<GroupsRecord> {
  const GroupsRecordDocumentEquality();

  @override
  bool equals(GroupsRecord? e1, GroupsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.city == e2?.city &&
        e1?.state == e2?.state &&
        e1?.groupName == e2?.groupName &&
        e1?.groupPosts == e2?.groupPosts &&
        e1?.groupDescription == e2?.groupDescription &&
        e1?.groupAvatar == e2?.groupAvatar &&
        listEquality.equals(e1?.groupUserList, e2?.groupUserList) &&
        e1?.groupOwner == e2?.groupOwner &&
        listEquality.equals(e1?.groupModerator, e2?.groupModerator);
  }

  @override
  int hash(GroupsRecord? e) => const ListEquality().hash([
        e?.city,
        e?.state,
        e?.groupName,
        e?.groupPosts,
        e?.groupDescription,
        e?.groupAvatar,
        e?.groupUserList,
        e?.groupOwner,
        e?.groupModerator
      ]);

  @override
  bool isValidKey(Object? o) => o is GroupsRecord;
}
