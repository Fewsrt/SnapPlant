import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'disease_record.g.dart';

abstract class DiseaseRecord
    implements Built<DiseaseRecord, DiseaseRecordBuilder> {
  static Serializer<DiseaseRecord> get serializer => _$diseaseRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get pic;

  @nullable
  String get description;

  @nullable
  String get treat;

  @nullable
  @BuiltValueField(wireName: 'create_at')
  DateTime get createAt;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DiseaseRecordBuilder builder) => builder
    ..name = ''
    ..pic = ''
    ..description = ''
    ..treat = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Disease');

  static Stream<DiseaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DiseaseRecord._();
  factory DiseaseRecord([void Function(DiseaseRecordBuilder) updates]) =
      _$DiseaseRecord;

  static DiseaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDiseaseRecordData({
  String name,
  String pic,
  String description,
  String treat,
  DateTime createAt,
  DocumentReference user,
}) =>
    serializers.toFirestore(
        DiseaseRecord.serializer,
        DiseaseRecord((d) => d
          ..name = name
          ..pic = pic
          ..description = description
          ..treat = treat
          ..createAt = createAt
          ..user = user));
