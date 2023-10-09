import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClosetRecord extends FirestoreRecord {
  ClosetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clothing_brand" field.
  String? _clothingBrand;
  String get clothingBrand => _clothingBrand ?? '';
  bool hasClothingBrand() => _clothingBrand != null;

  // "clothing_type" field.
  String? _clothingType;
  String get clothingType => _clothingType ?? '';
  bool hasClothingType() => _clothingType != null;

  // "size" field.
  String? _size;
  String get size => _size ?? '';
  bool hasSize() => _size != null;

  // "date_of_make" field.
  String? _dateOfMake;
  String get dateOfMake => _dateOfMake ?? '';
  bool hasDateOfMake() => _dateOfMake != null;

  // "closet_user" field.
  DocumentReference? _closetUser;
  DocumentReference? get closetUser => _closetUser;
  bool hasClosetUser() => _closetUser != null;

  // "clothing_image" field.
  String? _clothingImage;
  String get clothingImage => _clothingImage ?? '';
  bool hasClothingImage() => _clothingImage != null;

  // "clothing_description" field.
  String? _clothingDescription;
  String get clothingDescription => _clothingDescription ?? '';
  bool hasClothingDescription() => _clothingDescription != null;

  // "clothing_name" field.
  String? _clothingName;
  String get clothingName => _clothingName ?? '';
  bool hasClothingName() => _clothingName != null;

  void _initializeFields() {
    _clothingBrand = snapshotData['clothing_brand'] as String?;
    _clothingType = snapshotData['clothing_type'] as String?;
    _size = snapshotData['size'] as String?;
    _dateOfMake = snapshotData['date_of_make'] as String?;
    _closetUser = snapshotData['closet_user'] as DocumentReference?;
    _clothingImage = snapshotData['clothing_image'] as String?;
    _clothingDescription = snapshotData['clothing_description'] as String?;
    _clothingName = snapshotData['clothing_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('closet');

  static Stream<ClosetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClosetRecord.fromSnapshot(s));

  static Future<ClosetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClosetRecord.fromSnapshot(s));

  static ClosetRecord fromSnapshot(DocumentSnapshot snapshot) => ClosetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClosetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClosetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClosetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClosetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClosetRecordData({
  String? clothingBrand,
  String? clothingType,
  String? size,
  String? dateOfMake,
  DocumentReference? closetUser,
  String? clothingImage,
  String? clothingDescription,
  String? clothingName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clothing_brand': clothingBrand,
      'clothing_type': clothingType,
      'size': size,
      'date_of_make': dateOfMake,
      'closet_user': closetUser,
      'clothing_image': clothingImage,
      'clothing_description': clothingDescription,
      'clothing_name': clothingName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClosetRecordDocumentEquality implements Equality<ClosetRecord> {
  const ClosetRecordDocumentEquality();

  @override
  bool equals(ClosetRecord? e1, ClosetRecord? e2) {
    return e1?.clothingBrand == e2?.clothingBrand &&
        e1?.clothingType == e2?.clothingType &&
        e1?.size == e2?.size &&
        e1?.dateOfMake == e2?.dateOfMake &&
        e1?.closetUser == e2?.closetUser &&
        e1?.clothingImage == e2?.clothingImage &&
        e1?.clothingDescription == e2?.clothingDescription &&
        e1?.clothingName == e2?.clothingName;
  }

  @override
  int hash(ClosetRecord? e) => const ListEquality().hash([
        e?.clothingBrand,
        e?.clothingType,
        e?.size,
        e?.dateOfMake,
        e?.closetUser,
        e?.clothingImage,
        e?.clothingDescription,
        e?.clothingName
      ]);

  @override
  bool isValidKey(Object? o) => o is ClosetRecord;
}
