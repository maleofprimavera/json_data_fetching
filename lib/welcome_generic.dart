import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/json_serializable.dart';

part 'welcome_generic.g.dart';
@JsonSerializable(explicitToJson: true,genericArgumentFactories: true)
class WelcomeGeneric<T> {
  @JsonKey(name: "message")
  dynamic message;
  @JsonKey(name: "messageCode")
  int? messageCode;
  @JsonKey(name: "numberOfResult")
  dynamic numberOfResult;
  @JsonKey(name: "result")
  T? result;

  WelcomeGeneric({
    this.message,
    this.messageCode,
    this.numberOfResult,
    this.result,
  });

  factory WelcomeGeneric.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$WelcomeGenericFromJson(json,fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$WelcomeGenericToJson(this, toJsonT);
}

