// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiseaseRecord> _$diseaseRecordSerializer =
    new _$DiseaseRecordSerializer();

class _$DiseaseRecordSerializer implements StructuredSerializer<DiseaseRecord> {
  @override
  final Iterable<Type> types = const [DiseaseRecord, _$DiseaseRecord];
  @override
  final String wireName = 'DiseaseRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DiseaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.treat;
    if (value != null) {
      result
        ..add('treat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createAt;
    if (value != null) {
      result
        ..add('create_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  DiseaseRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiseaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pic':
          result.pic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'treat':
          result.treat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'create_at':
          result.createAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$DiseaseRecord extends DiseaseRecord {
  @override
  final String name;
  @override
  final String pic;
  @override
  final String description;
  @override
  final String treat;
  @override
  final DateTime createAt;
  @override
  final DocumentReference<Object> user;
  @override
  final DocumentReference<Object> reference;

  factory _$DiseaseRecord([void Function(DiseaseRecordBuilder) updates]) =>
      (new DiseaseRecordBuilder()..update(updates)).build();

  _$DiseaseRecord._(
      {this.name,
      this.pic,
      this.description,
      this.treat,
      this.createAt,
      this.user,
      this.reference})
      : super._();

  @override
  DiseaseRecord rebuild(void Function(DiseaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiseaseRecordBuilder toBuilder() => new DiseaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiseaseRecord &&
        name == other.name &&
        pic == other.pic &&
        description == other.description &&
        treat == other.treat &&
        createAt == other.createAt &&
        user == other.user &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), pic.hashCode),
                        description.hashCode),
                    treat.hashCode),
                createAt.hashCode),
            user.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiseaseRecord')
          ..add('name', name)
          ..add('pic', pic)
          ..add('description', description)
          ..add('treat', treat)
          ..add('createAt', createAt)
          ..add('user', user)
          ..add('reference', reference))
        .toString();
  }
}

class DiseaseRecordBuilder
    implements Builder<DiseaseRecord, DiseaseRecordBuilder> {
  _$DiseaseRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _pic;
  String get pic => _$this._pic;
  set pic(String pic) => _$this._pic = pic;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _treat;
  String get treat => _$this._treat;
  set treat(String treat) => _$this._treat = treat;

  DateTime _createAt;
  DateTime get createAt => _$this._createAt;
  set createAt(DateTime createAt) => _$this._createAt = createAt;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DiseaseRecordBuilder() {
    DiseaseRecord._initializeBuilder(this);
  }

  DiseaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _pic = $v.pic;
      _description = $v.description;
      _treat = $v.treat;
      _createAt = $v.createAt;
      _user = $v.user;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiseaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiseaseRecord;
  }

  @override
  void update(void Function(DiseaseRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiseaseRecord build() {
    final _$result = _$v ??
        new _$DiseaseRecord._(
            name: name,
            pic: pic,
            description: description,
            treat: treat,
            createAt: createAt,
            user: user,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
