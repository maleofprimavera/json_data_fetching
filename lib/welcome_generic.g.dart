// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_generic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WelcomeGeneric<T> _$WelcomeGenericFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    WelcomeGeneric<T>(
      message: json['message'],
      messageCode: json['messageCode'] as int?,
      numberOfResult: json['numberOfResult'],
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
    );

Map<String, dynamic> _$WelcomeGenericToJson<T>(
  WelcomeGeneric<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'messageCode': instance.messageCode,
      'numberOfResult': instance.numberOfResult,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
