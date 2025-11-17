// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
  value: json['value'] as String,
  type: $enumDecode(_$ContactTypeEnumMap, json['type']),
);

const _$ContactTypeEnumMap = {
  ContactType.email: 'email',
  ContactType.phone: 'phone',
};
