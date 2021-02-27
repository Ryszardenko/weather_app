// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$_$_LocationFromJson(Map<String, dynamic> json) {
  return _$_Location(
    json['Key'] as String,
    json['Type'] as String,
    json['LocalizedName'] as String,
    json['Country'] == null
        ? null
        : Area.fromJson(json['Country'] as Map<String, dynamic>),
    json['AdministrativeArea'] == null
        ? null
        : Area.fromJson(json['AdministrativeArea'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'Key': instance.key,
      'Type': instance.type,
      'LocalizedName': instance.localizedName,
      'Country': instance.country,
      'AdministrativeArea': instance.administrativeArea,
    };

_$_Area _$_$_AreaFromJson(Map<String, dynamic> json) {
  return _$_Area(
    json['ID'] as String,
    json['LocalizedName'] as String,
  );
}

Map<String, dynamic> _$_$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'ID': instance.id,
      'LocalizedName': instance.localizedName,
    };
