library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:starter/core/models/company/company.dart';
import 'package:starter/core/models/user/user.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  User,
  Company
])

final Serializers serializers = _$serializers;