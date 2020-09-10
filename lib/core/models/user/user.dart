library user;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:starter/core/models/serializers.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @BuiltValueField(wireName: 'firstname')
  String get firstname;
  @BuiltValueField(wireName: 'lastname')
  String get lastname;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  Map<String, dynamic> toMap() {
    return serializers.serializeWith(User.serializer, this);
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return serializers.deserializeWith(
      User.serializer,
      map,
    );
  }

  static Serializer<User> get serializer => _$userSerializer;
}