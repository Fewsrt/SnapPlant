// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historys_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistorysRecord> _$historysRecordSerializer =
    new _$HistorysRecordSerializer();

class _$HistorysRecordSerializer
    implements StructuredSerializer<HistorysRecord> {
  @override
  final Iterable<Type> types = const [HistorysRecord, _$HistorysRecord];
  @override
  final String wireName = 'HistorysRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HistorysRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.detectionTime;
    if (value != null) {
      result
        ..add('detection_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pic;
    if (value != null) {
      result
        ..add('pic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  HistorysRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistorysRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'users':
          result.users = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'detection_time':
          result.detectionTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$HistorysRecord extends HistorysRecord {
  @override
  final DocumentReference<Object> users;
  @override
  final DateTime detectionTime;
  @override
  final String name;
  @override
  final String pic;
  @override
  final DocumentReference<Object> reference;

  factory _$HistorysRecord([void Function(HistorysRecordBuilder) updates]) =>
      (new HistorysRecordBuilder()..update(updates)).build();

  _$HistorysRecord._(
      {this.users, this.detectionTime, this.name, this.pic, this.reference})
      : super._();

  @override
  HistorysRecord rebuild(void Function(HistorysRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistorysRecordBuilder toBuilder() =>
      new HistorysRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistorysRecord &&
        users == other.users &&
        detectionTime == other.detectionTime &&
        name == other.name &&
        pic == other.pic &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, users.hashCode), detectionTime.hashCode),
                name.hashCode),
            pic.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistorysRecord')
          ..add('users', users)
          ..add('detectionTime', detectionTime)
          ..add('name', name)
          ..add('pic', pic)
          ..add('reference', reference))
        .toString();
  }
}

class HistorysRecordBuilder
    implements Builder<HistorysRecord, HistorysRecordBuilder> {
  _$HistorysRecord _$v;

  DocumentReference<Object> _users;
  DocumentReference<Object> get users => _$this._users;
  set users(DocumentReference<Object> users) => _$this._users = users;

  DateTime _detectionTime;
  DateTime get detectionTime => _$this._detectionTime;
  set detectionTime(DateTime detectionTime) =>
      _$this._detectionTime = detectionTime;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _pic;
  String get pic => _$this._pic;
  set pic(String pic) => _$this._pic = pic;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HistorysRecordBuilder() {
    HistorysRecord._initializeBuilder(this);
  }

  HistorysRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users;
      _detectionTime = $v.detectionTime;
      _name = $v.name;
      _pic = $v.pic;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistorysRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistorysRecord;
  }

  @override
  void update(void Function(HistorysRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistorysRecord build() {
    final _$result = _$v ??
        new _$HistorysRecord._(
            users: users,
            detectionTime: detectionTime,
            name: name,
            pic: pic,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
