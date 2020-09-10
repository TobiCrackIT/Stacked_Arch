library company;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:starter/core/models/serializers.dart';

part 'company.g.dart';

abstract class Company implements Built<Company, CompanyBuilder> {
  Company._();

  factory Company([updates(CompanyBuilder b)]) = _$Company;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'catchPhrase')
  String get catchPhrase;
  @BuiltValueField(wireName: 'bs')
  String get bs;
  String toJson() {
    return json.encode(serializers.serializeWith(Company.serializer, this));
  }

  static Company fromJson(String jsonString) {
    return serializers.deserializeWith(
        Company.serializer, json.decode(jsonString));
  }

  Map<String, dynamic> toMap() {
    return serializers.serializeWith(Company.serializer, this);
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      Company.serializer,
      map,
    );
  }

  static Serializer<Company> get serializer => _$companySerializer;
}
