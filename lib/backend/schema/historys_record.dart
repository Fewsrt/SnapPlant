import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'historys_record.g.dart';

abstract class HistorysRecord
    implements Built<HistorysRecord, HistorysRecordBuilder> {
  static Serializer<HistorysRecord> get serializer =>
      _$historysRecordSerializer;

  @nullable
  DocumentReference get users;

  @nullable
  @BuiltValueField(wireName: 'detection_time')
  DateTime get detectionTime;

  @nullable
  String get name;

  @nullable
  String get pic;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HistorysRecordBuilder builder) => builder
    ..name = ''
    ..pic = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Historys');

  static Stream<HistorysRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HistorysRecord._();
  factory HistorysRecord([void Function(HistorysRecordBuilder) updates]) =
      _$HistorysRecord;

  static HistorysRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHistorysRecordData({
  DocumentReference users,
  DateTime detectionTime,
  String name,
  String pic,
}) =>
    serializers.toFirestore(
        HistorysRecord.serializer,
        HistorysRecord((h) => h
          ..users = users
          ..detectionTime = detectionTime
          ..name = name
          ..pic = pic));
